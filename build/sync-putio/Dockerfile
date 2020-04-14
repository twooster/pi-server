FROM alpine

RUN apk add --no-cache ca-certificates

COPY sync-putio /sync-putio

ENTRYPOINT ["/sync-putio"]
