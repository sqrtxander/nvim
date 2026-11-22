---@diagnostic disable: missing-fields
pack({
    src = "https://github.com/Saghen/blink.cmp",
    version = vim.version.range("1.*"),
})

require("blink.cmp").setup({
    ---@type blink.cmp.CompletionConfigPartial
    completion = {
        menu = {
            scrollbar = false,
            auto_show = true,
        },
        documentation = {
            auto_show = true,
        },
    },
})
