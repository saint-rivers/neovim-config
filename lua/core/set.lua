local opt = vim.opt

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.mouse = "a"
opt.number = true
opt.cursorline = true
opt.relativenumber = true
opt.linespace = 5
opt.autoindent = true
opt.smartindent = true
opt.hidden = true
opt.list = true
opt.showtabline = 1
-- opt.listchars:append({ space = "•", tab = "| ", eol = " " })
vim.cmd("set clipboard+=unnamedplus")
-- vim.cmd("set spell!")
vim.cmd("set linespace=10")
