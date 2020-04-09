local _M = { _VERSION = '0.10' }
function _M.get_ip()
    local ip = ngx.var.http_x_real_ip or ngx.var.http_x_forwarded_for or ngx.var.remote_addr or "0.0.0.0"
    return ip
end
return _M