FROM golang:1.15-alpine

ENV CGO_ENABLED=0
ENV GOOS=linux
ENV GOARCH=amd64

RUN apk update && \
    apk add --no-cache git && \ 
    go get -u golang.org/x/lint/golint 

RUN echo "build golang container"
