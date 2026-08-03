FROM teddysun/xray:latest

EXPOSE 8080

CMD ["xray", "run", "-config", "/etc/xray/config.json"]
