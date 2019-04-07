FROM archlinux/base

LABEL maintainer="iknpx@aol.com"

RUN pacman -Syy && \
	pacman -S nodejs npm --noconfirm && \
	npm i -g yarn gulp nodemon
