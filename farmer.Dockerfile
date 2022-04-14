FROM ubuntu:20.04

RUN apt-get update && apt-get install -y wget

RUN wget https://github.com/subspace/subspace/releases/download/snapshot-2022-mar-09/subspace-farmer-ubuntu-x86_64-snapshot-2022-mar-09  -O /usr/local/bin/farmer &&\
    chmod +x /usr/local/bin/farmer
COPY farmer.entrypoint.sh ./entrypoint.sh

ENV SUBSPACE_ADDRESS=5CtbQ16UKQN9kyttrJytMWcZ9HrQR4ZfPRwC3sfHhvoSCS9u

ENTRYPOINT ["/entrypoint.sh"]
