FROM ubuntu:14.04

COPY . /app

WORKDIR /app

RUN ["dnu", "restore"]

EXPOSE 5004

ENTRYPOINT ["dnx", ".", "kestrel"]
