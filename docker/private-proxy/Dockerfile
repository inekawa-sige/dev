FROM alpine:3.14

RUN apk add --no-cache \
    bash \
    privoxy \
    openvpn \
    curl \
    coreutils \
    linux-tools \
    util-linux && \
    rename .new '' /etc/privoxy/*new

COPY start.sh /bin/
RUN chmod 755 /bin/start.sh

EXPOSE 8118

CMD [ "start.sh" ]

