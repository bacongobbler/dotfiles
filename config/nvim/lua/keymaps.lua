local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<leader>n', ':Files<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>f', ':Rg!<CR>', opts)
