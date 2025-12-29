local example <const> = code [[
<b>load</b>                            <b>battery</b>
  1.54 1.35 1.13                  [=========|------]  100%|57.66% 0
<b>date</b>                              ▄▄▄▄▄▄▄▄▃▃▃▃▃▃▃▃▅▆▇█████        Full
  P   2024-06-18T01:53:21       <b>backlight</b>
  E   2024-06-18T04:53:21         [================]  100% 0
  BR  2024-06-18T05:53:21       <b>fs</b>
  UTC 2024-06-18T08:53:21         [=============---] 81.6%  51G/ 62G /
  CE  2024-06-18T10:53:21         [=============---] 83.0% 135G/162G /home
                                  [----------------]  0.5%  36M/7.8G /tmp
                                <b>thermal</b>
                                  [=======---------] 46.0°C Package id 0
                                  [=======---------] 45.0°C Core 0
                                  [=======---------] 46.0°C Core 1
                                  [=======---------] 45.0°C Core 2
                                  [=======---------] 46.0°C Core 3
]]

local example_conf <const> = code [[
modules <b>{</b> <b>"load"</b>, <b>"backlight"</b>, <b>"battery"</b>, <b>"fs"</b>, <b>"thermal"</b>, <b>"date"</b> <b>}</b>

windows <b>{</b>
    <b>{</b>modules <b>=</b> <b>{</b><b>"load"</b>, <b>"date"</b><b>}</b><b>}</b>,
    <b>{</b>modules <b>=</b> <b>{</b><b>"battery"</b>, <b>"backlight"</b>, <b>"fs"</b>, <b>"thermal"</b><b>}</b>, x <b>=</b> <b>3</b><b>2</b><b>}</b>,
<b>}</b>

timezones <b>{</b>
    <b>{</b><b>"P  "</b>, <b>"US/Pacific"</b><b>}</b>,
    <b>{</b><b>"E  "</b>, <b>"US/Eastern"</b><b>}</b>,
    <b>{</b><b>"BR "</b>, <b>"America/Sao_Paulo"</b><b>}</b>,
    <b>{</b><b>"UTC"</b>, <b>"UTC"</b><b>}</b>,
    <b>{</b><b>"CE "</b>, <b>"Europe/Prague"</b><b>}</b>,
<b>}</b>

backlights <b>{</b>
    <b>{</b><b>"0"</b>, <b>"/sys/class/backlight/intel_backlight/brightness"</b><b>}</b>,
<b>}</b>

batteries <b>{</b>
    <b>{</b><b>"0"</b>, <b>"/sys/class/power_supply/BAT0"</b><b>}</b>,
<b>}</b>

thermal <b>{</b>
    glob <b>"/sys/devices/platform/coretemp.0/hwmon/hwmon*/temp*_input"</b>
<b>}</b>

file_systems <b>{</b>
    <b>"/"</b>,
    <b>"/home"</b>,
    <b>"/tmp"</b>,
<b>}</b>
]]

return include "master.lua" {
    title = "custos",
    body_class = "w80",
    nav_path = {{nil, "custos"}},
    main = main(nil, lines {
        html "<h1>custos</h1>",
        blockquote(lines {
            par [[
Quis custodiet ipsos custodes?
]],
            quote_footer("Decimus Junius Juvenalis"),
        }),
        par [[
System monitoring utility.
]],
        par [[
Several modules exist to monitor different aspects of the system.  A simple Lua
file is used to configure the  update interval and the presentation, which can
be either simple text or <code>curses</code> windows.
]],
        ul {
            lines {
                link {
                    href = "https://gitlab.bbguimaraes.com/bbguimaraes/custos.git",
                    content = "source",
                },
                html "(gitlab)",
            },
            lines {
                link {
                    href = "https://github.com/bbguimaraes/custos.git",
                    content = "source",
                },
                html "(github)",
            },
        },
        par [[
Modules include:
]],
        ul {
            [[
<code>backlight</code>: screen backlight level.
]],
            [[
<code>battery</code>: battery charge and graph.
]],
            [[
<code>date</code>: date/time on one or more time zones.
]],
            [[
<code>fs</code>: file system space utilization.
]],
            [[
<code>load</code>: system load average.
]],
            [[
<code>thermal</code>: ACPI thermal measurement.
]],
        },
        hr(),
        par [[
Example:
]],
        example,
        hr(),
        par [[
Configuration file:
]],
        example_conf,
    }),
}
