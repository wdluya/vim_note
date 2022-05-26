local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap


keymap("", ";", "<Nop>", opts)
vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- FileExpoler  <cr>回车
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>f", ":NvimTreeFindFile<cr>", opts)