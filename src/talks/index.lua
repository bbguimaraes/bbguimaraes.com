local util <const> = require "lib.util"

local function link_list(title, t)
    local ret <const> = {}
    if t then
        table.insert(ret, concat { title, ":" })
        for i, x in ipairs(t) do
            table.insert(ret, d)
            if i == #t then
                table.insert(ret, link(x))
            else
                table.insert(ret, concat { link(x), "," })
            end
        end
    else
        table.insert(ret, title)
    end
    return lines(ret)
end

return include "master.lua" {
    title = "talks",
    body_class = "w80",
    nav_path = {{nil, "talks"}},
    main = lines {
        h2_link { "red-hat", "<code>Red Hat</code>" },
        par [[
A series of internal presentations on the various components and processes of
OpenShift's Continuous Integration (CI) team.
]],
        par [[
These presentations center on the architecture of <code>ci-operator</code>, the
core test executor of the CI system which handles tens of thousands of daily
jobs, doing source code / container image builds, temporary cluster
provisioning, test scheduling and execution, release management, etc.
]],
        ul {
            link_list(inline_tag("i", nil, "<code>ci-operator</code>"), {{
                href = "https://gitlab.bbguimaraes.com/bbguimaraes/presentations/-/tree/master/red_hat/ci-operator",
                content = "src",
            }, {
                href = "/files/talks/ci-operator_2022.pdf",
                content = "slides",
            }, {
                href = "/files/talks/ci-operator_2022_notes.pdf",
                content = "slides (with notes)",
            }}),
            link_list(inline_tag("i", nil, "End-to-end tests in OpenShift"), {{
                href = "https://gitlab.bbguimaraes.com/bbguimaraes/presentations/-/tree/master/red_hat/e2e_tests",
                content = "src",
            }, {
                href = "/files/talks/e2e_tests_2022.pdf",
                content = "slides",
            }, {
                href = "/files/talks/e2e_tests_2022_notes.pdf",
                content = "slides (with notes)",
            }}),
            link_list(inline_tag("i", nil, "Multi-stage tests"), {{
                href = "https://gitlab.bbguimaraes.com/bbguimaraes/presentations/-/tree/master/red_hat/multi_stage",
                content = "src",
            }, {
                href = "/files/talks/multi_stage_2022.pdf",
                content = "slides",
            }, {
                href = "/files/talks/multi_stage_2022_notes.pdf",
                content = "slides (with notes)",
            }}),
        },
        h2_link { "linux-containers", "Linux containers" },
        par [[
The focus of container tooling has been on ease of use, shielding the developer
from the intricacies of the kernel components. However, a deeper understanding
of the implementation is critical to develop systems that take advantage of
these technologies effectively.
]],
        par [[
This presentation explores the kernel and user-space elements that support the
implementation and the use of containers, to clarify and allow critical
reasoning about the advantages, disadvantages and limitations of their
utilization.
]],
        ul {
            link_list(
                link {
                    href = "https://linuxconcontainerconeurope2016.sched.com/event/7oHa/containers-you-are-not-expected-to-understand-this-bruno-barcarol-guimaraes-red-hat",
                    content = "Containercon Europe 2016",
                }, {{
                    href = "/files/talks/containercon_eu_2016.pdf",
                    content = "slides",
                }, {
                    href = "https://gitlab.bbguimaraes.com/bbguimaraes/presentations/tree/containercon_eu_2016/linux_containers",
                    content = "src",
                }}),
            link_list(
                link {
                    href = "http://schedule.fisl16.softwarelivre.org/#/talk/447",
                    content = "FISL16",
                }, {{
                    href = "/files/talks/fisl_16.pdf",
                    content = "slides",
                }, {
                    href = "https://gitlab.bbguimaraes.com/bbguimaraes/presentations/tree/fisl16/tchelinux/poa/2014",
                    content = "src",
                }}),
            link_list(
                link {
                    href = "https://web.archive.org/web/20150224041809/http://poa.tchelinux.org/",
                    content = "TcheLinux Porto Alegre 2014",
                }, {{
                    href = "/files/talks/tchelinux_poa_2014.pdf",
                    content = "slides",
                }, {
                    href = "https://gitlab.bbguimaraes.com/bbguimaraes/presentations/tree/tchelinux_poa_2014/tchelinux/poa/2014",
                    content = "src",
                }}),
            link_list(link {
                href = "https://web.archive.org/web/20171022131355/http://pycaxias.org/2014/index.html",
                content = "pycaxias 2014",
            }),
        },
        h2_link { "free-cloud-with-owncloud", "Free cloud with ownCloud" },
        par [[
A presentation of the project and a practical guide for people with no or little
experience with servers and/or ownCloud to create their own installation of this
personal cloud service.
]],
        ul {
            link_list(html("TchêLinux Caxias 2014"), {{
                href = "https://gitlab.bbguimaraes.com/bbguimaraes/presentations/tree/tchelinux_cxs_2014/tchelinux/caxias/2014",
                content = "src",
            }}),
        },
        h2_link { "bash-and-gnu-linux", "bash and gnu/linux" },
        par [[
A practical demonstration of the use of GNU tools in a Linux operating system in
common day-to-day tasks of programmers / systems administrators.
]],
        ul {
            link_list(
                link {
                    href = "https://web.archive.org/web/20160206174537/http://tchelinux.org/wiki//doku.php?id=evento_2013_08_cxs",
                    content = "TchêLinux Caxias 2013",
                }, {{
                    href = "https://gitlab.bbguimaraes.com/bbguimaraes/presentations/tree/tchelinux_cxs_2013/tchelinux/caxias/2013",
                    content = "src",
                }}),
        },
    },
}
