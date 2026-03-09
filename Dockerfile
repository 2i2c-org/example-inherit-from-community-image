# Inherit from an upstream image
FROM quay.io/jupyter/scipy-notebook:2026-03-09 

COPY environment.yml /tmp/environment.yml

RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml

COPY image-tests image-tests
RUN ls
