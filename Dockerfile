FROM alpine:latest

ARG UID="1000"
ARG GID="1000"

RUN apk update && \
    apk add wget && \
    apk add vlc && \
    rm -rf /var/cache/apk/* && \
    mkdir -p /opt/vlc-media && \
    addgroup --g "${GID}" -S vlc && \
    adduser -h /data -s /bin/sh -u "${UID}" -G vlc -S vlc

EXPOSE 8080
EXPOSE 554
EXPOSE 8554

USER "vlc"
WORKDIR /opt/vlc-media

ENTRYPOINT [ "/usr/bin/cvlc" ]
