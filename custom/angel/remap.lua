vim.keymap.set('n', '<Enter>', 'o<ESC>')
vim.keymap.set('n', '<S-Enter>', 'O<ESC>')

vim.keymap.set('n', '<C-a>', 'gg0vG$')

vim.keymap.set('v', 'M', '$')
vim.keymap.set('v', 'N', '^')
vim.keymap.set('n', 'M', '$')
vim.keymap.set('n', 'N', '^')

vim.keymap.set('n', '<A-s>', ':update<cr>')
vim.keymap.set('i', '<A-s>', '<Esc>:update<cr>gi')

vim.keymap.set('n', '<A-q>', ':q<cr>')
