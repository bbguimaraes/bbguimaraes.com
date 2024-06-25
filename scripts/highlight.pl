#!/bin/perl
use strict;
use warnings;

use constant C_BOLD => '(?:\#include)
    | (\'[^\']*\') | (\"[^"]*")
    | \b(
        const | extern | goto | return | struct | union | void
        | alignas | __asm__ | noreturn | offsetof | sizeof | static_assert
        | thread_local
        | char | int | unsigned | ptrdiff_t | size_t
        | ([ui](8|16|32|64))
        | ([0-9]+)
        | __FILE__ | __LINE__ | __func__
';

use constant C_ITAL => '(//.*)|(/\*.*?\*/)';

use constant CPP_BOLD => C_BOLD . '
    | class | override | virtual
    | const_cast | dynamic_cast | static_cast
)\b';

use constant X86_BOLD => '\.(zero|byte|word|long|quad) | \b(
    add | call | cmovne | j(e|mp) | lea | mov | pop | push | ret | sub | test
    | xor
    | QWORD | PTR
    | ([er]?(ax|bp|bx|cx|di|dx|ip|sp))
    | (-?[0-9]+)
)\b';

use constant LUA_BOLD => '
    = | \{ | \}
    | (\'[^\']*\') | (\"[^"]*")
    | ([0-9]+?)
';

sub escape {
    my $s = shift;
    $s =~ s/&/&amp;/g;
    $s =~ s/</&lt;/g;
    $s =~ s/>/&gt;/g;
    return $s;
}

sub bold {
    return "<b>" . shift . "</b>";
}

sub ital {
    return "<i>" . shift . "</i>";
}

my $lang = shift;
my $bold_regexp;
my $ital_regexp;
if($lang eq "c") {
    $bold_regexp = C_BOLD . ')\b';
    $ital_regexp = C_ITAL;
} elsif($lang eq "c++") {
    $bold_regexp = CPP_BOLD;
    $ital_regexp = C_ITAL;
} elsif($lang eq "x86") {
    $bold_regexp = X86_BOLD;
    $ital_regexp = '\#.*';
} elsif($lang eq "lua") {
    $bold_regexp = LUA_BOLD;
    $ital_regexp = "--.*";
}

for(<>) {
    $_ = escape($_);
    s/$bold_regexp/bold($&)/egx;
    s/$ital_regexp/ital($&)/egx;
    print;
}
