FROM alpine:3.14
COPY . /app
WORKDIR /app
EXPOSE 5000
CMD [ "./hello" ]
