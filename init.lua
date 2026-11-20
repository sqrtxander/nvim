vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("xander.autocmds")
require("xander.keymaps")
require("xander.lsp")
require("xander.options")
require("xander.plugins")

vim.cmd.colorscheme("cyberdream")
