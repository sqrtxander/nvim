pack("https://github.com/stevearc/conform.nvim")

require("conform").setup({
    ---@type table<string, conform.FiletypeFormatter>
    formatters_by_ft = {
        sh = { "beautysh" },
        c = { "clang-format" },
    },
    ---@type conform.DefaultFormatOpts
    default_format_opts = {
        lsp_format = "fallback",
    },
})
