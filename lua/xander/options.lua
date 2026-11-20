vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.winborder = "rounded"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

vim.opt.scrolloff = 5

vim.opt.ignorecase = true

vim.opt.formatoptions:remove("o")

vim.opt.termguicolors = true

vim.diagnostic.config({
    float = {
        source = true,
        header = "",
        prefix = "",
        border = "rounded",
        style = "minimal",
    },
})
