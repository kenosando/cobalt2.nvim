" cobalt2 colorscheme loader for Neovim
if has('nvim')
  " Call Lua setup directly to avoid heredoc parsing issues
  lua require('cobalt2').setup()
else
  finish
endif

set background=dark
