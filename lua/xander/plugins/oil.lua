pack("https://github.com/stevearc/oil.nvim")

require("oil").setup({
    default_file_explorer = true,
    columns = { "icon" },
    view_options = { show_hidden = true },
    use_default_keymaps = false,
    keymaps = { ["<CR>"] = "actions.select" },
})
vim.keymap.set("n", "<C-n>", "<Cmd>Oil<cr>")
