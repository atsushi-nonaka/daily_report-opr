local res = ngx.location.capture("/nginx_report", { method=ngx.HTTP_GET })
return ngx.say(res.body)