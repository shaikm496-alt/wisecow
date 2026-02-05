FROM ubuntu:22.04

WORKDIR /app

RUN apt update && apt install -y \
    fortune-mod \
    cowsay \
    netcat \
    curl \
    && rm -rf /var/lib/apt/lists/*

COPY wisecow.sh /app/wisecow.sh
RUN chmod +x /app/wisecow.sh

EXPOSE 8080
CMD ["/app/wisecow.sh"]
