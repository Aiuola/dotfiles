vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Enter to add newlines
vim.keymap.set('n', '<Enter>', 'o<ESC>')
vim.keymap.set('n', '<S-Enter>', 'O<ESC>')

vim.keymap.set('n', '<C-a>', 'gg0vG$')

vim.keymap.set('n', '4', '$')
vim.keymap.set('n', '5', '^')

