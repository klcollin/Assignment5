FROM alpine as builder
WORKDIR /app
COPY data.txt /app/data.txt

FROM fedora as final
WORKDIR /app
COPY --from=builder /app/data.txt /app/data.txt