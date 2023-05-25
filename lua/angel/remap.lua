vim.g.mapleader = ' '
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Enter to add newlines
vim.keymap.set('n', '<Enter>', 'o<ESC>')
vim.keymap.set('n', '<S-Enter>', 'O<ESC>')

-- Using system clipboard
vim.cmd('set clipboard+=unnamedplus')

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

