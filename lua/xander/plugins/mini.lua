pack("https://github.com/nvim-mini/mini.trailspace")
pack("https://github.com/nvim-mini/mini.statusline")
pack("https://github.com/nvim-mini/mini.icons")
pack("https://github.com/nvim-mini/mini.input")

require("mini.trailspace").setup({ only_in_normal_buffers = true })
require("mini.statusline").setup()
require("mini.icons").setup()
require("mini.input").setup()
