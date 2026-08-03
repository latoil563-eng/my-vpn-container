FROM alpine:latest

RUN apk add --no-cache curl bash ca-certificates && \
    bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install

WORKDIR /etc/xray

EXPOSE 8080

CMD ["xray", "run", "-config", "/etc/xray/config.json"]

