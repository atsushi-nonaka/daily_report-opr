FROM openresty/openresty:alpine

RUN apk --no-cache add git 
RUN git clone -b main https://github.com/atsushi-nonaka/daily_report-opr.git
RUN cp sources/*lua /usr/local/lib

COPY conf/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

CMD ["/usr/local/openresty/nginx/sbin/nginx", "-c", "/usr/local/openresty/nginx/conf/nginx.conf"]