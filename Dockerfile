# Inherit from an upstream image
FROM quay.io/jupyter/scipy-notebook:python-3.11

COPY environment.yml /tmp/environment.yml

RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml


RUN ls
