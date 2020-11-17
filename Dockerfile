FROM golang:1.13 AS builder
WORKDIR /go/src/github.com/wusphinx/multistage/
COPY main.go .
RUN go mod download && GOOS=linux GOARCH=amd64 go build -o app .

FROM alpine:latest  
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=builder /go/src/github.com/wusphinx/multistage/app .
CMD ["./app"]  