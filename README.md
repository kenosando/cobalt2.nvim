# Cobalt2 Neovim Colorscheme

## Installation

### Using packer.nvim

```lua
use {
  'kenosando/cobalt2.nvim', -- this repo
  config = function()
    vim.cmd 'colorscheme cobalt2'
  end
}
```

### vim-plug
- Add the plugin with `vim-plug` in your `init.vim`:

```vim
call plug#begin('~/.vim/plugged')
Plug 'kenosando/cobalt2.nvim'
call plug#end()

" then enable the colorscheme
colorscheme cobalt2
```

```neovim
local vim = vim
local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug('kenosando/cobalt2.nvim')
vim.call('plug#end')

" then enable the colorscheme
vim.call("colorscheme cobalt2")
```

### Manual
- Copy the `colors/cobalt2.vim` and `lua/cobalt2` into your runtimepath and run `:colorscheme cobalt2`.