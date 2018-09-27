# Docker_AMDGPU_Base_Image
Docker base image to build simple GPU Compute Container

# Build Container
Clone this Repositority and type command in cloned directory.

```bash
docker build -t <your image name to build> .
```

You can expand the container by add commands in Dockerfile, or use the image
in another container (build new container on top of this).

# Image on Dockerhub
https://hub.docker.com/r/guenterbailey/amdgpu/

# AMD Version in Container ?
I have notized, when i use different AMD driver, then not all GPU's working proberly.
So i have build the version 17.40 for amd-gpu-pro-17.40.xxx and 18.30 for amdgpu-pro-18.30-xxx.

To use the prebuild Docker image, check before the AMD Driver version with the version in tag by dockerhub.
the last 4 digits in the tagname is the used AMD Version.
