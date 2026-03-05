vim.g.mapleader = " " -- Set leader to space

local keymap = vim.keymap
keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- Clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v") -- Split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- Split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- Make split windows equal size
keymap.set("n", "<leader>sx", "<cmd>close<CR>") -- Close current split window

-- Replaces selected text with the unnamed register’s content without affecting the clipboard
vim.keymap.set("x", "<leader>p", [["+y]])
