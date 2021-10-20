FROM alpine:edge

RUN apk update \
  && apk add \
    alpine-sdk \
    tree \
    curl \
    zsh \
    git \
    neovim \
    neovim-doc \
    --update

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

WORKDIR /root/.config/nvim

COPY nvim .
