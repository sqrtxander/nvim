-- Open parent directory in current window
vim.keymap.set("n", "<C-n>", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- remove highlights on esc or enter
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Remove highlights" })
vim.keymap.set("n", "<Enter>", "<cmd>nohlsearch<CR>", { desc = "Remove highlights" })

-- yank to os copy buffer
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "[y]ank into OS copy buffer" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "[Y]ak into OS copy buffer" })

-- replace selected text without yanking it
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Replace selected text without yanking it" })

-- delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "[d]elete without yanking" })

-- Navigate vim panes
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move left one pane" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move down one pane" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move up one pane" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move right one pane" })

-- source current buffer
vim.keymap.set("n", "<leader>x", "<cmd>source %<CR>", { desc = "Source current buffer" })
