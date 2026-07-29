# :latest means latest LTS
FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    ca-certificates \
    unminimize \
    && rm -rf /var/lib/apt/lists/*

RUN sed -ri 's|http://|https://|' /etc/apt/sources.list.d/ubuntu.sources

RUN yes | unminimize

RUN apt-get update && apt-get install -y \
    build-essential \
    command-not-found \
    curl \
    git \
    sudo \
    vim \
    && rm -rf /var/lib/apt/lists/*

CMD ["bash"]
