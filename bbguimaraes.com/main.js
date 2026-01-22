import { select_create } from "./js/html.mjs";

if(document.getElementById("page-nav")) {
    let make_listener = (key, classes) => {
        let body = document.body;
        let l = body.classList;
        let orig = Array.prototype.find.call(classes, x => l.contains(x));
        if(orig)
            body.dataset[key] = orig;
        return e => {
            let l = body.classList;
            Array.prototype.forEach.call(classes, x => l.remove(x));
            let i = e.target.selectedIndex;
            if(i) {
                let v = e.target.options[i].value
                localStorage[key] = v;
                l.add(classes[i - 1]);
            } else {
                localStorage.removeItem(key);
                l.add(body.dataset[key]);
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
    let create = (div, title, key, unset_opt, classes, values) => {
        let sel = select_create(
            title, unset_opt, values, make_listener(key, classes));
        div.appendChild(sel);
        set_initial(key, sel);
    };
    let div = document.createElement("div");
    div.classList.add("nav-opt");
    create(
        div, "font style", "font", "font",
        ["mono", "roman"], ["mono", "roman"]);
    create(
        div, "background color", "bg_color", "color",
        ["black-bg", "white-bg"], ["black", "white"]);
    div.appendChild(document.querySelector("#rss-icon"));
    let nav = document.getElementById("page-nav");
    nav.insertBefore(div, nav.firstChild);
}

if(window.matchMedia('(pointer: coarse)').matches) {
    let cls = "hover";
    document.querySelectorAll(".hover-on-touch").forEach(x => {
        x.addEventListener("touchstart", _ => { x.classList.add(cls) });
        x.addEventListener("touchend",   _ => { x.classList.remove(cls) });
    });
}
