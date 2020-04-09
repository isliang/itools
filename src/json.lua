local json = require "cjson.safe"

local _M = { _VERSION = '0.10' }

function _M.is_valid_json(str)
    if json.decode(str) == nil then
        return false
    else
        return true
    end
end

return _M