local keymap = vim.keymap

-- Leader key
vim.g.mapleader = " "

-- Navigation
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down" })
keymap.set("n", "{", "{zz", { desc = "Jump to previous paragraph" })
keymap.set("n", "}", "}zz", { desc = "Jump to next paragraph" })

-- Searching
keymap.set("n", "n", "nzz", { desc = "Move to next result" })
keymap.set("n", "N", "Nzz", { desc = "Move to previous result" })
keymap.set("n", "<leader>nn", ":nohl<CR>", { desc = "Clear search highlights" })

-- Split control
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
keymap.set("n", "<leader>qa", ":wqall<CR>", { desc = "Save and close all buffers" })

-- Split navigation
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus split to the left" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus split to the right" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Focus split below" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Focus split above" })
