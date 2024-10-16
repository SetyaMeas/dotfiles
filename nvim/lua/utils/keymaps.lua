-- big cursor in insert mode
vim.cmd("set guicursor=n-v-c-i:block")

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "te", "$")
vim.keymap.set("n", "ts", "0")

vim.keymap.set("i", "<C-o>", "<C-o>o")
vim.keymap.set("i", "jj", "<Esc>")

-- moving line in normal mode
vim.keymap.set("n", "K", ":m-2<CR>==")
vim.keymap.set("n", "J", ":m+<CR>==")


-- moving line in visaul mode
vim.keymap.set("x", "J", ":move '>+1<CR>gv=gv")
vim.keymap.set("x", "K", ":move '<-2<CR>gv=gv")

-- Scroll up/down in insert mode
vim.keymap.set("i", "<C-j>", "<C-o><C-e>")
vim.keymap.set("i", "<C-k>", "<C-o><C-y>")

-- switch screen
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-h>", "<C-w>h")

-- select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- run: dotnet run on terminal
vim.keymap.set("n", "<Space>dr", ":term dotnet run<CR>")
