# Inherit from an upstream image
FROM buildpack-deps:24.04

RUN curl -vvv "https://packagemanager.posit.co/all/__linux__/jammy/2024-01-10+kZwhsmgb/src/contrib/PACKAGES" -o wat
RUN head wat