FROM ubuntu:18.04

COPY helix-core-server.tgz /usr/local/bin/
RUN apt update && apt install -y python3-pip && pip3 install awscli && pip3 install boto3 && \
    tar -xvzf /usr/local/bin/helix-core-server.tgz -C /usr/local/bin/ && rm /usr/local/bin/helix-core-server.tgz && \
    chmod a+x /usr/local/bin/p4 /usr/local/bin/p4d /usr/local/bin/p4broker /usr/local/bin/p4p
