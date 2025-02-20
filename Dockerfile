# Inherit from an upstream image
FROM jupyter/scipy-notebook:2023-05-01

RUN curl -vvv "https://packagemanager.posit.co/all/__linux__/jammy/2024-01-10+kZwhsmgb/src/contrib/PACKAGES" -o wat
RUN head wat