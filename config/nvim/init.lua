
-- Set to true if you have a nerd font installed
vim.g.have_nerd_font = true

---------- OPTIONS ----------

local opt = vim.opt

opt.syntax = 'enable'
opt.spell = true
opt.smartindent = true
opt.relativenumber = true
opt.number = true
opt.hidden = true
opt.guicursor = ''
opt.signcolumn = 'yes'
opt.colorcolumn = '120'
opt.scrolloff = 8
opt.cmdheight = 2
opt.textwidth = 120

-- "legacy" options for vim
opt.swapfile = false
opt.backup = false
opt.errorbells = false

---------- PLUGINS ----------

require('plugins')

---------- COLORS ----------

require('colors')

---------- KEYMAPS ----------

require('keymaps')

---------- CLIPBOARD ----------

require('clipboard')

---------- RIPGREP ----------

require('ripgrep')

---------- LSP ----------

require('lsp/config')
require('lsp/cmp')
