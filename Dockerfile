FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    unzip \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

COPY . .

RUN chmod +x install.sh

RUN ./install.sh

CMD ["bash", "-c", "ls -la ~ && ls -la ~/gaianet && ls -la ~/gaianet/bin"]





