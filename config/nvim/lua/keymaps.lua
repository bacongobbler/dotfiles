vim.g.mapleader = " "


-- copy to system clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

-- navigation


-- search/replace


-- multi-cursor and selection

-- file management
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open explorer' })
vim.keymap.set('n', '<C-p>', ':Files<CR>', { desc = 'Find in files' })
vim.keymap.set('n', '<leader>pf', ':Rg!<CR>', { desc = 'Find using ripgrep' })
vim.keymap.set('n', '<leader>pg', ':GFiles<CR>', { desc = 'Find files only in git' })

-- display

