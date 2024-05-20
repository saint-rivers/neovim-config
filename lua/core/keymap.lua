
vim.g.mapleader = " " -- easy to reach leader key

vim.keymap.set("n", "-", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>", { noremap = true })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<C-=>", ":IncreaseFont<CR>", {})
vim.keymap.set("n", "<C-_>", ":DecreaseFont<CR>", {})