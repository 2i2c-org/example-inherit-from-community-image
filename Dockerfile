# Inherit from an upstream image
FROM buildpack-deps:24.04

RUN apt update && apt install -y traceroute

RUN curl -vvv "https://2i2c.org/" -o w
RUN head w

RUN traceroute 3.132.14.200
RUN curl -vvv "https://packagemanager.posit.co/" -o water
RUN head water
RUN curl -vvv "https://packagemanager.posit.co/all/__linux__/jammy/2024-01-10+kZwhsmgb/src/contrib/PACKAGES" -o wat
RUN head wat