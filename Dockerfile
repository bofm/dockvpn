FROM alpine
RUN apk add --update --no-cache openvpn iptables socat curl openssl
ADD ./bin /usr/local/sbin
VOLUME /etc/openvpn
EXPOSE 443/tcp 1194/udp 8080/tcp
CMD run
