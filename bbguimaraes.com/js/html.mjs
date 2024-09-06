function option_create(text, attrs) {
    let ret = document.createElement("option");
    ret.textContent = text;
    for(let k in attrs)
        ret[k] = attrs[k];
    return ret;
}

function select_create(title, unset_opt, options, change_f) {
    let ret = document.createElement("select");
    ret.required = true;
    ret.title = title;
    ret.appendChild(option_create(unset_opt, {value: ""}));
    options.forEach(x => ret.appendChild(option_create(x)));
    ret.addEventListener("change", change_f);
    return ret;
}

export { option_create, select_create };
