FROM ubuntu:20.04

RUN apt-get update && apt-get install -y wget

RUN wget https://github.com/subspace/subspace/releases/download/snapshot-2022-mar-09/subspace-node-ubuntu-x86_64-snapshot-2022-mar-09 -O /usr/local/bin/subspace &&\
    chmod +x /usr/local/bin/subspace
COPY node.entrypoint.sh ./entrypoint.sh

ENV CHAIN=testnet
ENV NODE_NAME=djinn

ENTRYPOINT ["/entrypoint.sh"]
