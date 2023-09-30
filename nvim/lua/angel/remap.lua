vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<Enter>', 'o<ESC>')
vim.keymap.set('n', '<S-Enter>', 'O<ESC>')

vim.keymap.set('n', '<C-a>', 'gg0vG$')

vim.keymap.set('v', 'P', '$')
vim.keymap.set('v', 'O', '^')
vim.keymap.set('n', 'P', '$')
vim.keymap.set('n', 'O', '^')
