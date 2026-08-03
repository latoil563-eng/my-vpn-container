FROM alpine:latest

RUN apk update && apk add --no-copy-cache curl bash jq ca-certificates

# تثبيت Xray
RUN bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install

EXPOSE 8080

CMD ["xray", "run", "-confdir", "/etc/xray"]

