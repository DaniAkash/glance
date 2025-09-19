# Based on https://github.com/glanceapp/glance/discussions/185#discussioncomment-10791827
FROM golang:1.24.3-alpine3.21 AS builder
COPY . .
RUN go mod download
RUN go build -o /glance .
ENTRYPOINT ["/glance"]
