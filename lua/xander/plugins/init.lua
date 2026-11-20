--- Add vim.pack plugins with project defaults.
---@param ... string|vim.pack.Spec
function _G.pack(...)
    vim.pack.add({ ... }, { confirm = false, load = true })
end

require("xander.plugins.colorscheme")
require("xander.plugins.oil")
