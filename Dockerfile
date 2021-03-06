FROM ubuntu:16.04

LABEL maintainer="Bailey"
LABEL description="Ubuntu with AMD graphic support thanks to calvintam236"

#ENV AMDGPUDRIVERFILE="amdgpu-pro-18.20-606296.tar.xz"
#ENV AMDGPUDIRNAME="amdgpu-pro-18.20-606296"

ENV AMDGPUDRIVERFILE="amdgpu-pro-17.40-492261.tar.xz"
ENV AMDGPUDIRNAME="amdgpu-pro-17.40-492261"

WORKDIR /tmp
RUN dpkg --add-architecture i386 && \
    apt-get update && apt-get -y dist-upgrade  && \
    apt-get -y --no-install-recommends install ca-certificates curl xz-utils

# only used to speedup build
#COPY $AMDGPUDRIVERFILE /tmp/    
RUN curl -O https://download.b2go.cloud/AMD-GPU-PRO/$AMDGPUDRIVERFILE && \
    tar -xvf $AMDGPUDRIVERFILE && rm $AMDGPUDRIVERFILE && \
    ./$AMDGPUDIRNAME/amdgpu-pro-install -y --compute && \
    rm -rf $AMDGPUDIRNAME && \
    apt-get -y remove ca-certificates curl xz-utils && \
    apt-get -y autoremove && apt-get clean autoclean && \
    rm -rf /var/lib/{apt,dpkg,cache,log}

CMD ["/bin/bash"]
