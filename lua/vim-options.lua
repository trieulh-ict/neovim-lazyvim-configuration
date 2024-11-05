vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("highlight CursorLine cterm=none ctermbg=darkgray guibg=#3c3c3c")

vim.g.mapleader = " "
vim.opt.number = true
vim.opt.cursorline = true
vim.api.nvim_set_option("clipboard", "unnamed")
