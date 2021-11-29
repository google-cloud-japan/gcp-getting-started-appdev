FROM golang:1.15-alpine as builder
RUN apk add --no-cache git

ENV PROJECT github.com/google-cloud-japan/gcp-getting-started-appdev/microservices-demo/src/frontend
WORKDIR /go/src/$PROJECT

# restore dependencies
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /go/bin/frontend .

FROM alpine as release
RUN apk add --no-cache ca-certificates \
    busybox-extras net-tools bind-tools
WORKDIR /frontend
COPY --from=builder /go/bin/frontend /frontend/server
COPY ./templates ./templates
COPY ./static ./static
EXPOSE 8080
ENTRYPOINT ["/frontend/server"]
