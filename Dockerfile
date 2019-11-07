FROM archlinux/base

LABEL maintainer="iknpx@aol.com"

RUN echo Server = https://mirrors.atviras.lt/archlinux/\$repo/os/\$arch > /etc/pacman.d/mirrorlist && \
	pacman -Sy && \
    pacman -S wget tar git --noconfirm && \
    wget https://nodejs.org/dist/v13.1.0/node-v13.1.0-linux-x64.tar.xz && \
    tar -xJvf node-v12.12.0-linux-x64.tar.xz && \
    mv /node-v12.12.0-linux-x64 /usr/local/lib/node && \
    rm -rf ./node-v12.12.0-linux-x64.tar.xz && \
    export PATH=/usr/local/lib/node/bin:$PATH && \
	npm i -g yarn

ENV PATH="/usr/local/lib/node/bin:${PATH}"
