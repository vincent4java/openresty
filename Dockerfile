FROM openresty/openresty:1.11.2.3-trusty
MAINTAINER v4java

#
#RUN cd /tmp
#RUN apt-get install git -y
#RUN git clone https://github.com/grasses/nginx-lua-static-merger
#RUN cd nginx-lua-static-merger
#RUN chmod +x install
#RUN ls -lsh
#RUN bash install
RUN apt-get install wget -y
RUN cd /usr/local/openresty/lualib/resty
RUN wget https://raw.githubusercontent.com/bungle/lua-resty-template/master/lib/resty/template.lua -P /usr/local/openresty/lualib/resty/
RUN wget https://github.com/grasses/nginx-lua-static-merger/blob/master/lua/lua-nginx_static_merger.lua -P  /usr/local/openresty/lualib/resty/
#RUN cd /usr/local/openresty/lualib/resty
RUN mkdir /usr/local/openresty/lualib/resty/html
#RUN cd /usr/local/openresty/lualib/resty/html
RUN wget https://raw.githubusercontent.com/bungle/lua-resty-template/master/lib/resty/template/html.lua -P /usr/local/openresty/lualib/resty/html
RUN mkdir /var/www/
RUN mkdir /var/www/static

