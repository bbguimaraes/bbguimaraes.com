import { filter, map, take_while } from "./util.mjs"

function strcmp(s0, b0, e0, s1, b1, e1) {
    for(; b0 !== e0; ++b0, ++b1) {
        let d = s1.charCodeAt(b1) - s0.charCodeAt(b0);
        if(d !== 0)
            return d;
    }
    return 0;
}

function* tokens(s, sep) {
    let l = [0, 0];
    for(let i = 0, e;; i = e + 1) {
        e = s.indexOf(sep, i);
        if(e === -1) {
            l[0] = i, l[1] = s.length;
            yield l;
            break;
        }
        l[0] = i, l[1] = e;
        yield l;
    }
}

function* get_tokens(s, sep) {
    for(let [b, e] of tokens(s, sep))
        yield s.slice(b, e);
}

function has_token(s, sep, t) {
    let ret = tokens(s, sep);
    ret = map(ret, x => strcmp(t, 0, t.length, s, ...x));
    ret = take_while(ret, x => x <= 0);
    ret = filter(ret, x => x === 0);
    return ret.next().value !== undefined;
}

export { strcmp, get_tokens, has_token };
