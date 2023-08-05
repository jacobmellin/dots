-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- General config
require('set')
require('remap')
require('plugins')
require('commands')

-- Plugin config
require('colors')
require('fugitive')
require('lsp')
require('devicons')
require('tree')



