# STAGE 1: Builder
FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY go.mod .
COPY main.go .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

# STAGE 2: Runtime
FROM alpine:latest
RUN apk --no-cache add ca-certificates
RUN adduser -D -s /sbin/nologin appuser
WORKDIR /root/
COPY --from=builder /app/main .
RUN chown appuser:appuser ./main
USER appuser
EXPOSE 8080
CMD ["./main"]
