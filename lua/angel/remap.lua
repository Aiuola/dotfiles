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
vim.cmd([[
    set shiftwidth=4 smarttab
    set expandtab
    set tabstop=8 softtabstop=0
]])

