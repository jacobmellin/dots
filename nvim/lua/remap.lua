local builtin = require('telescope.builtin')

vim.g.mapleader = " "

-- Space, l, s will open directory browser
vim.keymap.set("n", "<leader>ls", vim.cmd.Ex)
vim.keymap.set("n", "<leader>tr", vim.cmd.NvimTreeToggle)

-- Space, f will open fuzzy finder
vim.keymap.set("n", "<leader>p", builtin.find_files, {})

vim.keymap.set("n", "<leader>c", builtin.commands, {})

-- Ctrl+p will open git file view
vim.keymap.set("n", "<C-p>", builtin.git_files, {})

vim.keymap.set('n', '<leader>g', function()
	builtin.grep_string({ search = vim.fn.input("Grep FF: ") })
end)

-- shift lines around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- switch project

-- replace current word
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- make executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- z fuzzy find (WIP)
vim.keymap.set("n", "<leader>z", "<cmd>!zshz | awk -e 'match($0, /[0-9]+(.*)/) {print $2}' | fzf<CR>")

-- insert blocks or brackets
vim.keymap.set("i", "<C-f>", "<Esc>$bea<Space>{<CR>}<Esc>ko")
vim.keymap.set("n", "<C-f>", "<Esc>$bea<Space>{<CR>}<Esc>ko")
vim.keymap.set("i", "<C-b>", "<Esc>$ea{}<Space><Esc>")

-- switch buffers
vim.keymap.set("n", "<C-s>", "<cmd>bn<CR>")

--exit insert mode using jj
vim.keymap.set("i", "jj", "<Esc>")

--exit terminal mode using esc
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

--exit terminal mode using Ctrl+W
vim.keymap.set("t", "<C-w>", "<C-\\><C-n>")

-- open terminal
vim.keymap.set("n", "<leader>te", "<cmd>ter<CR><cmd>sb1<CR>", { silent = true })

--newline in normal mode
vim.keymap.set("n", "<leader>o", "o<Esc>")
vim.keymap.set("n", "<leader>O", "O<Esc>")

-- wrap with curly braces  (not working)
-- vim.keymap.set("v", "<leader>wb", "c{<C-r>\"}<CR>")

-- curly braces
vim.keymap.set("i", "<C-7>", "{")
vim.keymap.set("i", "<C-0>", "}")

-- square brackets 
vim.keymap.set("i", "<C-8>", "[")
vim.keymap.set("i", "<C-9>", "]")

-- exit insert and write
vim.keymap.set("i", "<A-w>", "<Esc><cmd>w<CR>")

-- copy & paste to + register
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

--vim.keymap.set("n", "<leader>d", "\"_d")

-- search word and change
vim.keymap.set("n", "<leader>+", ":/<C-r><C-w><CR><S-n>")
-- to use this, do <leader>+, then change something, then go to next
-- match using <alt-n> and use . to update the change

-- use ü to go to next paragraph
-- vim.keymap.set("n", "ü", "}")
vim.opt.langmap="äöÄÖ;{}[]"

