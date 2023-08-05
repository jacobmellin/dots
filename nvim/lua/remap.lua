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
vim.keymap.set("i", "<C-f>", "<Esc>A<Space>{<CR>}<Esc>ko")
vim.keymap.set("i", "<C-b>", "{  }<Esc>hi")

-- switch buffers
vim.keymap.set("n", "<C-s>", "<cmd>bn<CR>")

--exit insert mode using jj
vim.keymap.set("i", "jj", "<Esc>")

--exit terminal mode using esx
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
