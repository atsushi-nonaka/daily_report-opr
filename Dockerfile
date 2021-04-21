FROM openresty/openresty:alpine

# RUN apk --no-cache add git 
# RUN git clone -b main https://github.com/atsushi-nonaka/daily_report-opr.git
# RUN cp /daily_report-opr/sources/*.lua /usr/local/lib

COPY sources/*.lua /usr/local/lib
# RUN cp /daily_report-opr/
COPY conf/nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

# RUN rm -rf daily_report-opr

CMD ["/usr/local/openresty/nginx/sbin/nginx", "-c", "/usr/local/openresty/nginx/conf/nginx.conf"]