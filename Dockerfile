FROM ubuntu:18.04

RUN apt update \
    && apt -y install curl software-properties-common gnupg

RUN curl 'https://packages.microsoft.com/keys/microsoft.asc' | apt-key add - \
    && add-apt-repository 'https://packages.microsoft.com/ubuntu/18.04/prod' \
    && apt update \
    && apt -y install mssql-cli \
    && apt -y install -f

ENTRYPOINT ["/bin/sh"]
