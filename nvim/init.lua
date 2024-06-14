-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.api.nvim_command('set conceallevel=2')

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
require('obsidian_config')
-- require('codeium_conf')
