vim.keymap.set('n', '<Enter>', 'o<ESC>')
vim.keymap.set('n', '<S-Enter>', 'O<ESC>')

vim.keymap.set('n', '<C-a>', 'gg0vG$')

vim.keymap.set('v', '<C-p>', '$')
vim.keymap.set('v', '<C-o>', '^')
vim.keymap.set('n', '<C-p>', '$')
vim.keymap.set('n', '<C-o>', '^')

vim.keymap.set('n', '<C-w>', ':update<cr>')
vim.keymap.set('i', '<C-w>', '<Esc>:update<cr>gi')

vim.keymap.set('n', '<C-q>', ':q<cr>')

vim.keymap.set('n', '<A-w>', ':update<cr>:q<cr>')
