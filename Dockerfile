# syntax=docker/dockerfile:1

FROM golang:alpine AS build

RUN apk update && apk add --no-cache git

# Set destination for COPY
WORKDIR /app

COPY go.mod go.sum main.go ./

RUN go mod tidy

RUN go build -o binary



FROM alpine:latest

COPY --from=build /app/binary /app/binary

CMD ["/app/binary"]





