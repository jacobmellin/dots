-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.g.codeium_filetypes = {
    markdown = false;
}

require('neo-tree')
require('commands')
require('set')
require('devicons')
require('plugins')
require('colors')
--require('fugitive')
require('lsp')
require('remap')
-- require('tree')
require('neotree-plugin')
require('treesitter')
require('completions')
require('comment')
require('statusbar')
