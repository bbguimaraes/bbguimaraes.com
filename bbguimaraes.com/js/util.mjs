function unique(l) {
    return [...new Set(l)];
}

function* filter(xs, f) {
    for(let x of xs)
        if(f(x))
            yield x;
}

function* flat_map(xs, f) {
    for(let x of xs)
        for(let y of f(x))
            yield y;
}

function* map(xs, f) {
    for(let x of xs)
        yield f(x);
}

function* take_while(xs, f) {
    for(let x of xs)
        if(f(x))
            yield x;
        else
            break;
}

export { unique, filter, flat_map, map, take_while };
