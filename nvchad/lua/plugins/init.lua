return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier"
  		},
  	},
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
    -- load luasnips + cmp related in insert mode only
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        dependencies = "rafamadriz/friendly-snippets",
        opts = { history = true, updateevents = "TextChanged,TextChangedI" },
        config = function(_, opts)
          require("luasnip").config.set_config(opts)
          require "nvchad.configs.luasnip"
        end,
      },

      -- autopairing of (){}[] etc
      {
        "windwp/nvim-autopairs",
        opts = {
          fast_wrap = {},
          disable_filetype = { "TelescopePrompt", "vim" },
        },
        config = function(_, opts)
          require("nvim-autopairs").setup(opts)

          -- setup cmp for autopairs
          local cmp_autopairs = require "nvim-autopairs.completion.cmp"
          require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
      },

      -- cmp sources plugins
      {
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
      },
    },
    opts = function()
      local config = require "nvchad.configs.cmp"
      local cmp = require "cmp"

      config.mapping['<C-k>'] = cmp.mapping.select_prev_item()
      config.mapping['<C-j>'] = cmp.mapping.select_next_item()
      config.mapping['<C-l>'] = cmp.mapping.confirm({ select = true })
      config.mapping['<C-Space>'] = cmp.mapping.complete()

      return config
    end,
    config = function(_, opts)
      require("cmp").setup(opts)
    end,
  },

  {
    "huggingface/llm.nvim",
    opts = {
--      api_token = nil,
      model = "codestral",
      backend = "ollama",
      url = "http://localhost:11434",
      request_body = {
        options = {
          temperature = 0.2,
          top_p = .095
        }
      },
       fim = {
          enabled = false,
          prefix = "<fim_prefix>",
          middle = "<fim_middle>",
          suffix = "<fim_suffix>",
        },
      debounce_ms = 150,
      accept_keymap = "<C-k>",
      dismiss_keymap = "<S-Tab>",
      tls_skip_verify_insecure = false,
      lsp = {
        bin_path = nil,
        host = nil,
        port = nil,
        cmd_env = nil,
        version = "0.5.3",
      },
      tokenzier = nil,
      context_window = 512,
      enable_suggestions_on_startup = true,
      enable_suggestions_on_files = "*",
      disable_url_path_completion = false
    },
    init = function(_, opts)
      -- require("llm").setup(opts)
    end,
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile"
    },

    dependencies = {
      "nvim-lua/plenary.nvim"
    },

    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
  },
  {
    "epwalsh/obsidian.nvim",
    lazy = true,
    ft = "markdown",
    requires = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
  }, {
    "mbbill/undotree",
    lazy = false
  }, {
    'mrcjkb/rustaceanvim',
    version = '^4',
    lazy = false,
    init = function(_, opts)
      
    end
  }, {
    "ray-x/go.nvim",
    dependencies = {  -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
  }, {
        "nmac427/guess-indent.nvim",
        init = function() require('guess-indent').setup {} end,
  }, {
    "lervag/vimtex",
    ft = { "tex" },
    init = function()
      vim.g.tex_flavour = "latex"
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_mappings_enabled = 0
      vim.g.vimtex_view_method ="zathura"
      vim.g.vimtex_context_pdf_viewer = "zathura"
    end
  }, {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({


      })
    end
  }
}
