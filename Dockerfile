FROM golang:1.15-alpine

ENV CGO_ENABLED=0
ENV GOOS=linux
ENV GOARCH=amd64

RUN echo "build golang container"
