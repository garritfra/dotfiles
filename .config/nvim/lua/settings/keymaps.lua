local function global_keymap(desc) return { silent = true, desc = desc } end

--Remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Y yank until the end of line
vim.keymap.set("n", "Y", "y$", global_keymap("Yank full line"))
vim.keymap.set("v", "p", "\"_dP", global_keymap("Paste from clipboard"))

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", global_keymap("Switch to lefthand window"))
vim.keymap.set("n", "<C-j>", "<C-w>j", global_keymap("Switch to window below"))
vim.keymap.set("n", "<C-k>", "<C-w>k", global_keymap("Switch to window above"))
vim.keymap.set("n", "<C-l>", "<C-w>l", global_keymap("Switch to righthand window"))
