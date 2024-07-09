require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- keymap
vim.keymap.set("n", "<leader>cfk", "<cmd>e ~/.config/nvim/lua/options.lua<CR><cmd>NvimTreeToggle<CR><cmd>NvimTreeOpen<CR>")

-- lazyk
vim.keymap.set("n", "<leader>cfp", "<cmd>e ~/.config/nvim/lua/plugins/init.lua<CR><cmd>NvimTreeToggle<CR><cmd>NvimTreeOpen<CR>")

-- lsp diagnostic window
vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float(nil)<CR>")

-- lsp hover information
vim.keymap.set("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>")

-- leave terminal mode
vim.keymap.set("t", "<C-space>", "<C-\\><C-n><cmd>b 1<CR>")

-- open parent folder of active file
vim.keymap.set("n", "<leader>pr", "<cmd>e %:p:h<CR>")

-- make executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- insert blocks or brackets
vim.keymap.set("i", "<C-f>", "<Esc>g_a<Space>{<CR>}<Esc>ko")
vim.keymap.set("n", "<C-f>", "<Esc>g_a<Space>{<CR>}<Esc>ko")
vim.keymap.set("i", "<C-k>", "<Esc>a{<CR>}<Esc>ko")

-- curly braces
vim.keymap.set("i", "<C-7>", "{")
vim.keymap.set("i", "<C-0>", "}")

-- square brackets
vim.keymap.set("i", "<C-8>", "[")
vim.keymap.set("i", "<C-9>", "]")

-- exit insert and write
vim.keymap.set("i", "<A-w>", "<Esc><cmd>w<CR>")
vim.keymap.set("n", "<A-w>", "<Esc><cmd>w<CR>")

-- go up and down paragraphs with ü and ä
vim.keymap.set("n", "ü", "{")
vim.keymap.set("n", "ä", "}")
vim.opt.langmap = "äöÄÖ;{}[]"

-- Space, l, s will open directory browser
-- vim.keymap.set("n", "<leader>ls", vim.cmd.Ex)

-- Obsidian mapping
vim.keymap.set("n", "<leader>os", "<cmd>ObsidianQuickSwitch<cr>")
vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<cr>")
vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<cr>")
vim.keymap.set("n", "<leader>ol", "<cmd>ObsidianLink<cr>")
vim.keymap.set("n", "<leader>og", "<cmd>ObsidianSearch<cr>")
vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianTags<cr>")
vim.keymap.set("n", "<leader>od", "<cmd>ObsidianDailies<cr>")
vim.keymap.set("n", "<leader>ov", "<cmd>ObsidianTemplate<cr>")

-- show diagnostic window
-- vim.api.nvim_set_keymap("n", "<leader>i", ":lua vim.diagnostic.open_float(nil, { focus=true, scope='cursor' })<CR>", default_opts)

-- show undotree
vim.keymap.set("n", "<leader>tr", "<cmd>UndotreeToggle<CR><cmd>UndotreeFocus<CR>")
