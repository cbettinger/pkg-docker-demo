FROM alpine:latest

RUN apk update && apk add --no-cache libstdc++ libgcc && rm -rf /var/cache/apk/*

WORKDIR /app

COPY ./pkg .

CMD ["./helloworld"]
