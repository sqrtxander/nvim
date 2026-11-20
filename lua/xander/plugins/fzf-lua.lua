pack("https://github.com/ibhagwan/fzf-lua")

local fzf = require("fzf-lua")

fzf.setup({})
fzf.register_ui_select()

vim.keymap.set("n", "<leader>sf", fzf.files, { desc = "[s]earch [f]iles" })
vim.keymap.set("n", "<leader>sg", fzf.live_grep, { desc = "[s]earch [g]rep" })
vim.keymap.set("n", "<leader>sh", fzf.helptags, { desc = "[s]earch [h]elp" })
