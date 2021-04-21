local res = ngx.location.capture("/nginx_user", { method=ngx.HTTP_GET })
return ngx.say(res.body)