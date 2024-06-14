-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- -- telescope fuzzy finder
	-- use {
	-- 	'nvim-telescope/telescope.nvim', tag = '0.1.2',
	-- 	-- or                          , branch = '0.1.x',
	-- 	requires = { {'nvim-lua/plenary.nvim'} }
	-- }

    -- status bar (feline)
    use 'freddiehaddad/feline.nvim'

    -- fzf-lua
    use { 'ibhagwan/fzf-lua', requires = { 'nvim-tree/nvim-web-devicons' } }

	use { 'catppuccin/nvim', as = "catppuccin" }

    use 'rebelot/kanagawa.nvim'

--	use ({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
	use ({'nvim-treesitter/nvim-treesitter'})

    use ({'nvim-treesitter/playground'})

	use('tpope/vim-fugitive')


    use 'nvim-tree/nvim-web-devicons'

--    use 'nvim-tree/nvim-tree.lua'

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }

--    use 'github/copilot.vim'
    -- use {
    --     'Exafunction/codeium.vim',
    --         config = function()
    --         require("codeium").setup({})
    --     end
    -- }

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}

    use 'YacineDo/mc.nvim'

    use 'terrortylor/nvim-comment'

    use{
          "epwalsh/obsidian.nvim",
          tag = "*",  -- recommended, use latest release instead of latest commit
          requires = {
                -- Required.
                "nvim-lua/plenary.nvim",

                -- see below for full list of optional dependencies 👇
          }
      }

    use 'lervag/vimtex'
  end)
