local dump_obj
local function dump(x, f)
    f = f or io.stdout
    dump_obj(x, f, "")
    f:write("\n")
end

function dump_obj(x, f, pre)
    if type(x) == "string" then
        f:write('"', x, '"')
    elseif type(x) == "table" then
        local pre_sub <const> = pre .. "  "
        f:write("{\n")
        for k, v in pairs(x) do
            f:write(pre_sub)
            dump_obj(k, f, "")
            f:write(" = ")
            dump_obj(v, f, pre_sub)
            f:write(",\n")
        end
        f:write(pre, "}")
    else
        f:write(tostring(x))
    end
end

return {
    dump = dump,
}
