# image ansible 9.6.0

FROM python:3.12-alpine

WORKDIR /playbook

RUN mkdir -p /root/.ssh \
    && echo 'StrictHostKeyChecking no' > /root/.ssh/config \
    && chmod 0600 /root/.ssh/config

RUN apk add --no-cache \
    bash \
    openssh-client \
    libffi-dev \
    build-base

RUN pip3 install pip --upgrade \
    && pip3 install ansible==9.6.0

