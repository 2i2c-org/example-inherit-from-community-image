# Inherit from a community maintained image

This repo is an example of using [repo2docker-action](https://github.com/jupyterhub/repo2docker-action)
to build a user image for your JupyterHub inheriting from a community maintained image and adding
some packages to it. In this case, we inherit from the [jupyter/scipy-notebook](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-scipy-notebook)
image, and add the packages listed in `environment.yml` to it.

## Features

1. Inherits from a specific tagged version of the `jupyter/scipy-notebook`, whole image can be upgraded by changing
   the `FROM` tag in `Dockerfile`
2. All modifications happen in `environment.yml` file, which is not container specific. Regular users can use this too.
3. Users can test out their image **interactively** by making a PR, which will automatically create a comment with a link to
   mybinder.org, which will build the image *exactly* the same way our action does. This allows users to contribute packages
   and changes to this repo without needing docker installed locally. [See example PR](https://github.com/yuvipanda/example-inherit-from-community-image/pull/1)
4. On making PRs, a GitHub action builds the image to make sure it can be built. This catches issues with syntax errors and
   missing versions.
5. Tests inside the `image-tests/` directory are also run on each PR, allowing for more fine-grained tests - either as
   `pytest` tests or as jupyter notebooks that must reproduce exactly. This helps catch issues with version upgrades breaking
   your instructional code. The tests are invoked as part of the [`jupyterhub/repo2docker` action](https://github.com/jupyterhub/repo2docker-action). See [here](https://github.com/jupyterhub/repo2docker-action#testing-the-built-image#testing-the-built-image) for more details.
6. When a PR is merged, the image is built and pushed to [quay.io](https://quay.io/repository/yuvipanda/example-inherit-from-community-image?tab=info)
