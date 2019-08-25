FROM archlinux/base

LABEL maintainer="iknpx@aol.com"

RUN pacman -Syu nodejs npm libuv --noconfirm && \
	npm i -g nodemon yarn gulp@3.9.1 gulp-sftp@0.1.5
