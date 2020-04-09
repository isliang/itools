local arg = ngx.req.get_uri_args()
local json = require "json"
local ip = require "ip"
local date_utils = require "date-utils"

local param = arg["p"]

if ngx.var.sub_path == "json_decode" then -- json格式校验
    if json.is_valid_json(param) then
        ngx.say("valid")
    else
        ngx.say("invalid")
    end
elseif ngx.var.sub_path == "time" then -- 时间戳转时间
    ngx.say(date_utils.time2date(param))
elseif ngx.var.sub_path == "date" then -- 时间转时间戳
    ngx.say(date_utils.date2time(param))
elseif ngx.var.sub_path == "ip" then
    ngx.say(ip.get_ip())
end