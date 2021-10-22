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

# Setup C++ LSP
RUN apk add \
  build-base \
  clang
  # clang-dev \

# Setup Python LSP
RUN apk add \
  python3-dev \
  py3-pip \
  npm

RUN npm i -g pyright

# RUN pip install 'python-lsp-server[all]' --user
# RUN pip install -U setuptools

WORKDIR /root/.config/nvim

COPY nvim .

