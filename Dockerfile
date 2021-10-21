FROM golang:1.17 as builder

# first (build) stage

WORKDIR /app
COPY . .
RUN go mod tidy
RUN CGO_ENABLED=0 go build -o k8s-for-beginners

# final (target) stage

FROM alpine:3.14
COPY --from=builder /app/k8s-for-beginners /
CMD ["/k8s-for-beginners"]
