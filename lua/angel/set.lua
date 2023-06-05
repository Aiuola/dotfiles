-- All my vim sets

-- Using system clipboard
vim.cmd('set clipboard+=unnamedplus')

vim.g.mapleader = ' '

-- Lines!
vim.cmd('set number relativenumber')

-- 4 space tabs
-- https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.tabstop = 8
vim.opt.softtabstop = 0

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'

vim.opt.scrolloff = 8

vim.opt.colorcolumn='80'

