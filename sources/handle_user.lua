local method_name = ngx.req.get_method()

if method_name == 'GET'
    local res = ngx.location.capture('/nginx_user', { method=ngx.HTTP_GET })
    if res.status == 200 then
        return ngx.say(res.body)
    else
        return ngx.say("Can't connect /nginx_user")
    end
else if method_name == 'POST'
    
else if method_name == 'PUT' 
else if method_name == 'DELETE'
end