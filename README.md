# Docker_AMDGPU_Base_Image
Docker base image to build simple GPU Compute Container

# Build Container
Clone this Repositority and type in cloned directory.

```bash
docker build -t <your image name to build> .
```

You can expand the container by add commands in Dockerfile, or use the image
in another container (build new container on top of this).

# Image on Dockerhub
https://hub.docker.com/r/guenterbailey/amdgpu/
