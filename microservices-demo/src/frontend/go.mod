module github.com/GoogleCloudPlatform/microservices-demo/src/frontend

go 1.15

require (
	cloud.google.com/go v0.56.0
	contrib.go.opencensus.io/exporter/jaeger v0.2.1
	contrib.go.opencensus.io/exporter/stackdriver v0.5.0
	github.com/golang/protobuf v1.3.5
	github.com/google/uuid v1.1.1
	github.com/gorilla/mux v1.7.4
	github.com/konsorten/go-windows-terminal-sequences v1.0.2 // indirect
	github.com/pkg/errors v0.8.1
	github.com/sirupsen/logrus v1.4.2
	go.opencensus.io v0.22.4
	google.golang.org/grpc v1.28.0
)

replace git.apache.org/thrift.git v0.13.1-0.20200316223853-eccd2e879e73 => github.com/apache/thrift v0.13.1-0.20200316223853-eccd2e879e73
