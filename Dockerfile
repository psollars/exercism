FROM node:14.5.0

RUN mkdir /home/exercism

WORKDIR /home/exercism

ARG artifact=exercism-3.0.13-linux-x86_64.tar.gz

COPY ./artifacts/$artifact /tmp

RUN tar -xzf /tmp/$artifact -C /tmp

RUN mv /tmp/exercism /bin

CMD exercism configure --token=$EXERCISM_TOKEN && \
    exercism configure --workspace=/home/exercism && \
    /bin/bash
