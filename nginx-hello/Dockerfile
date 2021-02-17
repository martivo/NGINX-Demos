FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
RUN apk update && apk add bash net-tools tcpdump wget htop vim curl libcap && setcap cap_net_bind_service=+ep /usr/sbin/nginx && chmod +s /usr/bin/vim
ADD hello.conf /etc/nginx/conf.d/
ADD index.html /usr/share/nginx/html/
