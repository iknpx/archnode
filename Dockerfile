FROM archlinux/base

RUN pacman -Syy && \
	pacman -S nodejs npm yarn gulp --noconfirm