# neovim-config
my neovim configurations...

Easy `git clone git@github.com:podanypepa/neovim-config.git` in your `~/.config/nvim/` directory.

[`init.lua`](./init.lua) is neovim config entry point.

## package manager

I have used [`lazy.nvim`](https://github.com/folke/lazy.nvim).

You can add the following Lua code to your init.lua to bootstrap lazy.nvim

```lua
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
```

After installing `lazy.nvim` run cmd `:Lazy`.

## `nvim` startup time

```bash
nvim --startuptime vimstartup.txt +e vimstartup.txt
```

## Plugins update from cmd line

```bash
nvim --headless "+Lazy! sync" +qa
```
