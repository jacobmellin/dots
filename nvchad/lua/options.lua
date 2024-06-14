require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "<leader>cf", "<cmd>e ~/.config/nvim/lua/options.lua<CR>")

-- leave terminal mode
vim.keymap.set("t", "<C-space>", "<C-\\><C-n><cmd>b 1<CR>")

-- open parent folder of active file
vim.keymap.set("n", "<leader>pr", "<cmd>e %:p:h<CR>")

-- vim.g.clipboard = {
--   name = 'OSC 52',
--   copy = {
--     ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
--     ['*'] = require('vim.ui.clipboard.osc52').copy('*')
--   },
--   paste = {
--     ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
--     ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
--   }
-- }
--
--
