import { option_create, select_create } from "../js/html.mjs";
import { get_tokens, has_token } from "../js/str.mjs";
import { flat_map, map, unique } from "../js/util.mjs";

let tag_sep = ",";
function get_tags_str(x) { return x.dataset.tags; }
function get_tags(x) { return get_tokens(get_tags_str(x), tag_sep); }
function get_all_tags(xs) { return unique(flat_map(xs, get_tags)).sort(); }
function has_tag(x, t) { return has_token(get_tags_str(x), tag_sep, t); }

function set_display(xs, f) {
    xs.forEach(x => x.style.display = f(x) ? "" : "none");
}

function change(e) {
    let l = document.querySelectorAll(".videos [data-tags]");
    let sel = e.target, i = sel.selectedIndex, t = sel.options[i].textContent;
    set_display(l, (i === 0) ? _ => true : x => has_tag(x, t));
}

function init() {
    let header = document.querySelector(".header .bottom");
    if(!header)
        return;
    let videos = document.querySelector(".videos");
    if(!videos)
        return;
    let tags = get_all_tags(videos.querySelectorAll("[data-tags]"));
    let div = document.createElement("div");
    div.classList.add("tag-filter");
    div.appendChild(select_create("filter", "filter", tags, change));
    header.prepend(div);
}

init();
