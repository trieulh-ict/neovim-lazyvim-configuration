return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      size = 15,                -- Height of terminal when horizontal (you can adjust as needed)
      open_mapping = [[<c-\>]], -- Default keybinding to toggle the terminal
      direction = 'float',
      shade_filetypes = {},
      close_on_exit = true,     -- Close the terminal window when the process exits
      shell = vim.o.shell,      -- Use your default shell
    })

    vim.api.nvim_set_keymap('n',"<leader>tt", ":ToggleTerm<CR>", {})

    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({
      cmd = "lazygit",
      dir = "git_dir",
      direction = "float",
      float_opts = {
        border = "double",
      },
      -- function to run on opening the terminal
      on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
      end,
      -- function to run on closing the terminal
      on_close = function(term)
        vim.cmd("startinsert!")
      end,
    })

    function _lazygit_toggle()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua _lazygit_toggle()<CR>", {
      noremap = true,
      silent = true,
    })
  end,
}
