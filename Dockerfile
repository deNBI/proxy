FROM haproxy:1.9.4

RUN apt update && apt install -y curl socat cron 
RUN curl https://get.acme.sh | sh
ADD entrypoint.sh /entrypoint.sh
ADD update.sh /update.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
