FROM ubuntu:25.10

RUN apt-get update
RUN apt update && apt install -y curl
RUN apt-get update && apt-get install -y build-essential gcc g++ gdb
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


WORKDIR /src
COPY . /src

RUN g++ src/main.cpp -o build/main

CMD ["./main"]