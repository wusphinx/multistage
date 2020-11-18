FROM golang:1.13 as builder
WORKDIR /go/src/github.com/wusphinx/multistage/
COPY go.mod go.sum ./ 
# cache 
RUN go mod download 
COPY main.go .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 GO111MODULE=on go build -o app .

FROM alpine:latest  
RUN apk --no-cache add ca-certificates
WORKDIR /
COPY --from=builder /go/src/github.com/wusphinx/multistage/app .
CMD ["./app"]  
