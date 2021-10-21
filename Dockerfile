FROM alpine:3.14
COPY . /app
WORKDIR /app
RUN ls -la
EXPOSE 5000
ENTRYPOINT ["./hello"]
