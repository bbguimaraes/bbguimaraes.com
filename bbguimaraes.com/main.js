import { select_create } from "./js/html.mjs";

if(document.getElementById("page-nav")) {
    let make_listener = (key, cls) => {
        let l = document.body.classList;
        let reset = l.contains(cls) ? l.add : l.remove;
        return e => {
            let sel = e.target;
            let i = sel.selectedIndex;
            if(i) {
                localStorage[key] = sel.options[i].value;
                switch(i) {
                case 1: l.remove(cls); break;
                case 2: l.add(cls); break;
                }
            } else {
                localStorage.removeItem(key);
                reset.call(l, cls);
            }
        };
    };
    let set_initial = (key, sel) => {
        let v = localStorage[key];
        if(!v)
            return;
        let o = Array.prototype.find.call(
            sel.querySelectorAll("option"),
            x => x.value == v);
        if(!o)
            return;
        sel.selectedIndex = o.index;
        sel.dispatchEvent(new Event("change"));
    };
    let create = (div, title, key, unset_opt, cls, values) => {
        let sel = select_create(
            title, unset_opt, values, make_listener(key, cls));
        div.appendChild(sel);
        set_initial(key, sel);
    };
    let div = document.createElement("div");
    div.classList.add("nav-opt");
    create(div, "font style", "font", "font", "roman", ["mono", "roman"]);
    create(
        div, "background color", "bg_color", "color", "white-bg",
        ["black", "white"]);
    div.appendChild(document.querySelector("#rss-icon"));
    document.getElementById("page-nav").appendChild(div);
}

if(window.matchMedia('(pointer: coarse)').matches) {
    let cls = "hover";
    document.querySelectorAll(".hover-on-touch").forEach(x => {
        x.addEventListener("touchstart", _ => { x.classList.add(cls) });
        x.addEventListener("touchend",   _ => { x.classList.remove(cls) });
    });
}
