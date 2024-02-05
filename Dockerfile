FROM golang:1.19.0-alpine

RUN apk add bash
WORKDIR /usr/src/app

RUN go install github.com/cosmtrek/air@latest

COPY go.sum .
COPY go.mod .
RUN go mod tidy
