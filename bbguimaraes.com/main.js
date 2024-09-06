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
    let make_sel = (title, key, cls, values) => {
        let [v0, v1, v2] = values;
        let ret = document.createElement("select");
        ret.required = true;
        ret.innerHTML = `
<option value="">${v0}</option>
<option>${v1}</option>
<option>${v2}</option>
`;
        ret.title = title;
        ret.addEventListener("change", make_listener(key, cls, ret));
        return ret;
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
    let create = (div, title, key, cls, values) => {
        let sel = make_sel(title, key, cls, values);
        div.appendChild(sel);
        set_initial(key, sel);
    };
    let div = document.createElement("div");
    div.classList.add("nav-opt");
    create(div, "font style", "font", "roman", [
        "font", "mono", "roman",
    ]);
    create(div, "background color", "bg_color", "white-bg", [
        "color", "black", "white",
    ]);
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
