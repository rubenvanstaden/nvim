# NeoVIM

My godlike neovim configuration in lua lang.

## Developers

Use A docker container to test changes before making changes to local machine.

```shell
# Build image
docker build -t nvim-image .

# Chroot into container instance
docker run -w /root -it --rm nvim-image zsh
```