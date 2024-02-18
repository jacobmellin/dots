local lsp = require("lsp-zero").preset('recommended')

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'rust_analyzer',
    'lua_ls',
    'html',
    'jsonls',
    'emmet_ls',
    'phpactor',
    'tailwindcss',
    'marksman',
    'sourcekit',
    'clangd'
})

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-l>'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<Tab>'] = cmp.mapping.select_next_item(),
})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
require('lspconfig').html.setup{}
require('lspconfig').jsonls.setup{}
require('lspconfig').emmet_ls.setup{}
require('lspconfig').phpactor.setup{}
require('lspconfig').tailwindcss.setup{}
require('lspconfig').marksman.setup{}
require('lspconfig').sourcekit.setup{}
require('lspconfig').clangd.setup{}

-- custom config
-- code actions
vim.keymap.set("n", "<leader>vca", function () vim.lsp.buf.code_action() end)


lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})
lsp.setup()
