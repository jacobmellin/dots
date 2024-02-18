-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.g.codeium_filetypes = {
    markdown = false;
    text = false;
}

require('plugins')
require('commands')
require('set')
require('devicons')
require('colors')
require('lsp')
require('remap')
require('neotree-plugin')
require('treesitter')
require('completions')
require('comment')
require('statusbar')
require('codeium_conf')
