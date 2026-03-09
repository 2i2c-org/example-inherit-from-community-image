# Inherit from an upstream image
FROM quay.io/jupyter/scipy-notebook:2026-03-09 
# You can also inherit from pangeo base image instead. Remove the
# previous line and uncomment the next line
# FROM pangeo/pangeo-notebook:2026.01.30

# We copy the `environment.yml` file in this repo, only adding in extra
# packages that aren't in our base image.
COPY environment.yml /tmp/environment.yml

RUN mamba env update --prefix ${CONDA_DIR} --file /tmp/environment.yml

COPY image-tests image-tests
