FROM archlinux/base

LABEL maintainer="salikovpro@gmail.com <Iakov Salikov>"

RUN echo Server = https://mirrors.atviras.lt/archlinux/\$repo/os/\$arch > /etc/pacman.d/mirrorlist && \
	pacman -Sy && \
    pacman -S wget tar git --noconfirm && \
    wget https://nodejs.org/dist/v14.15.1/node-v14.15.1-linux-x64.tar.xz && \
    tar -xJvf node-v14.15.1-linux-x64.tar.xz && \
    mv /node-v14.15.1-linux-x64 /usr/local/lib/node && \
    rm -rf ./node-v14.15.1-linux-x64.tar.xz && \
    export PATH=/usr/local/lib/node/bin:$PATH && \
	npm i -g yarn

ENV PATH="/usr/local/lib/node/bin:${PATH}"
