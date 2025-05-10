vim.g.mapleader = " "

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open explorer' })

-- remaps using fzf.vim
vim.keymap.set('n', '<leader>n', ':Files<CR>', { desc = 'Find in files' })
vim.keymap.set('n', '<leader>pf', ':Rg!<CR>', { desc = 'Find using ripgrep' })

-- search for files checked into git (e.g. ignoring node_modules)
vim.keymap.set('n', '<C-p>', ':GFiles<CR>', { desc = 'Find files only in git' })
