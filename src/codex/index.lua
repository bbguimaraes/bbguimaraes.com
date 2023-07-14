function line(href, content, ...)
    return lines {
        concat {
            link { href = href, content = content },
            ":",
        },
        ...,
    }
end

return include "list_simple.lua" {
    title = "codex",
    body_class = "w80",
    nav_path = {{nil, "codex"}},
    description = inline_tag("p", nil, "Code experiments."),
    sections = {{
        items = {
            link {
                href = "https://gitlab.bbguimaraes.com/bbguimaraes/codex.git",
                content = "source",
            },
            link {
                href = "docs/",
                content = "documentation",
            },
            link {
                href = "/files/codex/codex.pdf",
                content = "notes",
            },
        },
    }, {
        items = {
            line(
                "https://gitlab.bbguimaraes.com/bbguimaraes/codex/-/blob/master/algo",
                "algo",
                html("assorted algorithms")),
            line(
                "https://gitlab.bbguimaraes.com/bbguimaraes/codex/-/blob/master/arithmetic_folding",
                "arithmetic_folding",
                html("how far will the compiler go to optimize a sequence of"),
                html("arithmetic operations that involve constant expressions?")),
            line(
                "https://gitlab.bbguimaraes.com/bbguimaraes/codex/-/blob/master/base64",
                "base64",
                html("Base64 (RFC 4648) encoder/decoder")),
            line(
                "https://gitlab.bbguimaraes.com/bbguimaraes/codex/-/blob/master/bit_pattern",
                "bit_pattern",
                html "compile-time bit pattern matcher based on",
                link {
                    href = "https://www.youtube.com/watch?v=-GqMLnWuHTU",
                    content = "C++ Weekly ep. 230",
                }),
            line(
                "https://gitlab.bbguimaraes.com/bbguimaraes/codex/-/blob/master/bsearch",
                "bsearch",
                html("good old binary search")),
            line(
                "https://gitlab.bbguimaraes.com/bbguimaraes/codex/-/blob/master/c_wrapper",
                "c_wrapper",
                html("wrapper for C-style `void*` + function pointer")),
            line(
                "https://gitlab.bbguimaraes.com/bbguimaraes/codex/-/blob/master/event_dispatcher",
                "event_dispatcher",
                html("type-safe event listener/dispatcher")),
            line(
                "https://gitlab.bbguimaraes.com/bbguimaraes/codex/-/blob/master/lambda",
                "lambda",
                html("lambda (ab)uses")),
            line(
                "https://gitlab.bbguimaraes.com/bbguimaraes/codex/-/blob/master/list",
                "list",
                html("linked lists")),
            line(
                "https://gitlab.bbguimaraes.com/bbguimaraes/codex/-/blob/master/packet_reader",
                "packet_reader",
                html("structured data packet reader")),
            line(
                "https://gitlab.bbguimaraes.com/bbguimaraes/codex/-/blob/master/popcount",
                "popcount",
                html("set bit counter")),
            line(
                "https://gitlab.bbguimaraes.com/bbguimaraes/codex/-/blob/master/reflection",
                "reflection",
                html("basic structure reflection using C++17 structured bindings")),
            line(
                "https://gitlab.bbguimaraes.com/bbguimaraes/codex/-/blob/master/time",
                "time",
                html("simple time measurement and reporting program")),
            line(
                "https://gitlab.bbguimaraes.com/bbguimaraes/codex/-/blob/master/yaml",
                "yaml",
                html("YAML converter utility")),
        },
    }},
}
