-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Remap scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move selected text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Search terms stay in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Replace a chunk of text without losing the initial copied text in the buffer
vim.keymap.set("x", "<leader>p", '"_dP')

-- Access clipboard only using Ctrl+c
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true })

-- Disable Q
vim.keymap.set("n", "Q", "<nop>")
