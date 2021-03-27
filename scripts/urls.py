#!/bin/env python3
import html
import itertools
import os
import re
import subprocess
import sys
import xml.dom.minidom

URL_PATTERN = r'https://([^.]+\.)?bbguimaraes\.com/[^"<&]*$'
SRC_REF_PATTERN = r'class="src-ref"'

DOMAIN_RE = re.compile(r'^https://([^.]+)\.bbguimaraes\.com/.*$')
INTERNAL_RE = re.compile(r'^https://bbguimaraes\.com/([^?#]*)$')
GITLAB_RE = re.compile(r'^https://gitlab\.bbguimaraes\.com/bbguimaraes/(.+)$')
GITLAB_REPOSITORY_RE = re.compile('^([^/]+)$')
GITLAB_FILE_RE = re.compile(
    r'^([^/]+)/-/(?:(releases)|(?:blob|tree)/([^/]+)/(.*))$')

SRC_REF_ATTRS = ('data-hash', 'href')

REPOSITORIES = (
    'bbguimaraes.com.git',
    'codex.git',
    'impero.git',
    'machinatrix.git',
    'nngn.git')

def main():
    if not check_urls():
        return 1
    if not check_files():
        return 1

def err(*msg):
    print(*msg, file=sys.stderr)
    return False

def rg(*args, only_matching=False):
    l = [
        'rg', '--glob', '!bbguimaraes.com/files/*'
        '--no-heading', '--no-filename', '--no-line-number']
    if only_matching:
        l.append('--only-matching')
    l.extend(args)
    ret = subprocess.check_output(l)
    return ret.decode('utf-8')

def file_path(repo, name):
    return os.path.join('..', repo, name)

def check_urls():
    urls = rg(URL_PATTERN, only_matching=True)
    urls = sorted(map(html.unescape, set(urls.splitlines())))
    for domain, urls in itertools.groupby(urls, extract_subdomain):
        if domain is None:
            if not all(map(check_internal_url, urls)):
                return False
        elif domain == 'gitlab':
            if not all(map(check_gitlab_url, urls)):
                return False
        else:
            return err('unhandled domain:', domain, list(urls))
    return True

def extract_subdomain(url):
    return next(iter(DOMAIN_RE.findall(url)), None)

def check_internal_url(url):
    m = INTERNAL_RE.match(url)
    if m is None:
        return err('unknown internal URL:', url)
    return os.path.exists(os.path.join('bbguimaraes.com', m.group(1))) \
        or err('internal file not found:', url)

def check_gitlab_url(url):
    _, ok = parse_gitlab_url(url)
    return ok

def parse_gitlab_url(url, *, files_only=False):
    m = GITLAB_RE.match(url)
    if m is None:
        return (None, None, None), err('unknown Gitlab URL:', url)
    tail = m.group(1)
    if not files_only:
        if m := GITLAB_REPOSITORY_RE.match(tail):
            r = m.group(1)
            return (
                (None, None, None),
                r in REPOSITORIES or err('unknown repository:', r))
    m = GITLAB_FILE_RE.match(tail)
    if m is None:
        return (None, None, None), err('unknown Gitlab URL format:', url)
    repo, is_release, branch, file_name = m.groups()
    if not files_only and is_release:
        ret = repo + '.git' in REPOSITORIES
        return ((None, None, None), ret or err('unknown repository:', repo))
    if branch != 'master':
        return (None, None, None), err('branch must be "master":', url)
    if not os.path.exists(file_path(repo, file_name)):
        return (
            (None, None, None),
            err('file not found', f'{repo}, {branch}:{file_name}'))
    return (repo, branch, file_name), True

def check_files():
    for line in sorted(set(find_files())):
        (hash, url), ok = parse_src_ref(line)
        if not ok:
            return False
        (repo, branch, path), ok = parse_gitlab_url(url)
        if not ok or not check_hash(repo, branch, path, hash):
            return False
    return True

def find_files():
    ret = rg(SRC_REF_PATTERN, 'bbguimaraes.com/blog')
    return map(str.strip, ret.splitlines())

def parse_src_ref(s):
    x = xml.dom.minidom.parseString(s).documentElement
    if not all(x.hasAttribute(a) for a in SRC_REF_ATTRS):
        return (), err('invalid `src-ref` element:', line)
    return map(x.getAttribute, SRC_REF_ATTRS), True

def check_hash(repo, branch, path, hash):
    out = subprocess.check_output((
        'git', '-C', os.path.join('..', repo),
        'rev-parse', f'{branch}:{path}'))
    out = out.decode('utf-8').rstrip()
    return hash == out \
        or err(f'invalid hash ({hash} != {out}) for path: {path}')

if __name__ == '__main__':
    sys.exit(main())
