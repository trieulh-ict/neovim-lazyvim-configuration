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
vim.api.nvim_set_keymap("n", "<leader>d", "yyp", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-v>", "<Esc>v", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-x>", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>a", "ggVG", { noremap = true, silent = true })
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = "*",
  command = "silent! wall",
})
