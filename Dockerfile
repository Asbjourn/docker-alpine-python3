FROM alpine:3.15.0

ENV PYTHONUNBUFFERED=1

RUN apk add --no-cache python3
RUN ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools wheel
RUN pip3 install --no-cache platformio==5.2.5
