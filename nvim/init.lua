-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require('commands')
require('set')
require('devicons')
require('colors')
require('fugitive')
require('lsp')
require('plugins')
require('remap')
require('tree')
require('treesitter')
