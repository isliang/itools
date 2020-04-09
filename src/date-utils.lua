local string_utils = require "string-utils"

local _M = { _VERSION = '0.10' }

function _M.time2date(time)
    return os.date("%Y-%m-%d %H:%M:%S", time)
end

function _M.date2time(date)
    local date_arr = string_utils.explode(date, " ")
    local ymd = string_utils.explode(date_arr[1], "-")
    local hms = string_utils.explode(date_arr[2], ":")
    return os.time({year=ymd[1], day=ymd[3], month=ymd[2], hour=hms[1], min=hms[2], sec=hms[3]})
end

return _M