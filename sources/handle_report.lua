local method_name = ngx.req.get_method()

if method_name == 'GET' then
    local res = ngx.location.capture('/nginx_report', { method=ngx.HTTP_GET })
    if res.status == 200 then
        return ngx.say(res.body)
    else
        return ngx.say("Can't connect /nginx_report")
    end
elseif method_name == 'POST' then
    ngx.req.read_body()
    _args = ngx.req.get_body_data()

    local res = ngx.location.capture('/nginx_report', { 
        method = ngx.HTTP_POST,
        args = _args
    })
    if res.status == 200 then
        return ngx.say(res.body)
    else
        return ngx.say("Can't connect /nginx_report")
    end
end