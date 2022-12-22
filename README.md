# neovim-config
my neovim configurations...

Easy `git clone git@github.com:podanypepa/neovim-config.git` in your `~/.config/nvim/` directory.

[`init.lua`](./init.lua) is neovim config entry point.

## package manager

I have used [`packer.nvim`](https://github.com/wbthomason/packer.nvim).

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

After installing `packer.nvim` run in `nvim` cmd `:PackerInstall` or from coommand line `nvim +PackerInstall`

## `nvim` startup time

```bash
nvim --startuptime vimstartup.txt +e vimstartup.txt
```
