FROM base/archlinux:latest

RUN pacman -Syy && \
	pacman -S nodejs npm yarn gulp --noconfirm