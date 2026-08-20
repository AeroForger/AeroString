local String = {}

function String.trim(str)
    return str:match("^%s*(.-)%s*$")
end

function String.contains(str, value)
    return str:find(value, 1, true) ~= nil
end
function String.startsWith(str, prefix)
    return str:sub(1, #prefix) == prefix
end
function String.endsWith(str, suffix)
    return str:sub(-#prefix) == prefix
end
function String.split(str, separator)
    local result = {}
    local start = 1

    while true do
        local position = string.find(str, separator, start, true)

        if not position then
            table.insert(result, string.sub(str, start))
            break
        end

        table.insert(result, string.sub(str, start, position - 1))
        start = position + #separator
    end

    return result
end

return String