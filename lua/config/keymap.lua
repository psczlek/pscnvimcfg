vim.g.mapleader = ","

local set = vim.keymap.set

-- switch between open windows using the <ctrl> hjkl keys
set("n", "<C-h>", "<C-w>h")
set("n", "<C-j>", "<C-w>j")
set("n", "<C-k>", "<C-w>k")
set("n", "<C-l>", "<C-w>l")

-- open lazy window
set("n", "<leader>L", "<cmd>Lazy<cr>")

-- nvim-tree
set("n", "<C-n>", "<cmd>NvimTreeToggle<cr>")

-- bufferline
set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>")
set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>")

-- close a buffer
set("n", "<leader>cb", "<cmd>bdelete<cr>")

-- window splits
set("n", "<leader>sv", "<C-W>v")
set("n", "<leader>sh", "<C-W>s")

-- save file
set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>")
