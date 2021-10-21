FROM alpine:edge

RUN apk update \
  && apk add \
    alpine-sdk \
    tree \
    curl \
    fd \
    ripgrep \
    zsh \
    git \
    neovim \
    neovim-doc \
    --update

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

WORKDIR /root/.config/nvim

COPY nvim .

