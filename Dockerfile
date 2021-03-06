FROM golang:1.12.1-alpine3.9
RUN apk add bash ca-certificates git gcc g++ libc-dev
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN go mod download
RUN go build -v
CMD ["/app/golang-chat-app"]