-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "gopls", "html", "cssls", "emmet_ls", "ts_ls", "ltex"  }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

lspconfig.ltex.setup({
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    ltex = {
      language = 'de',
      -- additionalRules = {
      --   languageModel = "~/languagetool/ngrams/"
      -- }
    }
  }
})

-- lspconfig.gdscript.setup{cmd = {"ncat", "localhost", "6005"}, root_dir = function() {
--   return root
-- end
-- }
