vim.g.mapleader = " " -- easy to reach leader key

-- basic keybinds
vim.keymap.set("n", "-", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>", { noremap = true })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<C-=>", ":IncreaseFont<CR>", {})
vim.keymap.set("n", "<C-_>", ":DecreaseFont<CR>", {})

-- code navigation
vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })         -- <Ctrl + o>: close hover // jump list
vim.keymap.set("n", "gd", vim.lsp.buf.definition)                   -- <Ctrl + t>: go back // tag list
vim.keymap.set("n", "gT", vim.lsp.buf.type_definition)
vim.keymap.set("n", "gI", vim.lsp.buf.implementation)
vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next)                 -- go to next error
vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev)                 -- go to next error
vim.keymap.set("n", "<leader>dt", "<cmd>Telescope diagnostics<cr>")         -- list all errors
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)                        -- rename symbol
vim.keymap.set("n", "<leader>", vim.lsp.buf.code_action)                    -- ask gopls what can be done to fix sth in your file <alt + enter> in intellij
