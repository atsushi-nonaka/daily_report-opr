FROM openresty/openresty:alpine

RUN 

COPY conf/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

CMD ["/usr/local/openresty/nginx/sbin/nginx", "-c", "/usr/local/openresty/nginx/conf/nginx.conf"]