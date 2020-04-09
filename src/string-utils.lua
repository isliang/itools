local _M = { _VERSION = '0.0.1' }

-- string to table
function _M.explode(_str, _separator)
    if (type(_str) ~= "string") then
        return nil, "str type is not string"
    end
    if (type(_separator) ~= "string") then
        return nil, "separator type is not string"
    end

    local pos,arr = 0, {}
    for pos_s, pos_e in function() return string.find(_str, _separator, pos, true) end do
        table.insert(arr, string.sub(_str, pos, pos_s-1))
        pos = pos_e + 1
    end
    table.insert(arr, string.sub(_str, pos))
    return arr
end

-- table to string
function _M.implode(_table, _separator)
    if (type(_table) ~= "table") then
        return nil, "table type is not table"
    end
    if (type(_separator) ~= "string") then
        return nil, "separator type is not string"
    end

    for _, v in ipairs(_table) do
        if (type(v) ~= "string" and type(v) ~= "number") then
            return nil, "table value type is not string"
        end
    end

    return table.concat(_table, _separator)
end

return _M
