--- Add vim.pack plugins with project defaults.
---@param ... string|vim.pack.Spec
function _G.pack(...)
    vim.pack.add({ ... }, { confirm = false, load = true })
end

require("xander.plugins.colorscheme")
require("xander.plugins.mini")
require("xander.plugins.oil")
require("xander.plugins.treesitter")
require("xander.plugins.conform")
require("xander.plugins.fzf-lua")
require("xander.plugins.blinkcmp")
