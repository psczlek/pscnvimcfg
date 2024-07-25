-- disable swap files
vim.opt.swapfile = false
vim.opt.backup = false

-- set width of a tab
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- insert spaces on a tab press
vim.opt.expandtab = true

-- smart autoindenting for C programs
vim.opt.smartindent = true

-- show line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- display wrap guide (that fat vertical line)
vim.opt.colorcolumn = '80'

vim.opt.termguicolors = true

-- highlight match while typing search pattern
vim.opt.incsearch = true

-- disable highlights on last search pattern matches
vim.opt.hlsearch = false

-- disable line wraps
vim.opt.wrap = false
