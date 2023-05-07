# Inherit from a community maintained image

This repo is an example of using [repo2docker-action](https://github.com/jupyterhub/repo2docker-action)
to build a user image for your JupyterHub inheriting from a community maintained image and adding
some packages to it. In this case, we inherit from the [jupyter/scipy-notebook](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-scipy-notebook)
image, and add the packages listed in `environment.yml` to it.

The built image is then pushed to [quay.io](https://quay.io/repository/yuvipanda/example-inherit-from-community-image?tab=info)
