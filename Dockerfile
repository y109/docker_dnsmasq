FROM alpine:3.7

MAINTAINER y109 "y109@qq.com"

#ENV HTTP_PROXY http://192.168.109.17:10980
#ENV HTTPS_PROXY http://192.168.109.17:10980
#RUN export http_proxy=$HTTP_PROXY
#RUN export https_proxy=$HTTPS_PROXY

RUN apk add --no-cache dnsmasq

EXPOSE 53 53/udp

ENTRYPOINT [ "dnsmasq", "-k", "-q" ]
CMD [ "-d", "-C", "/etc/dnsmasq.conf" ]

