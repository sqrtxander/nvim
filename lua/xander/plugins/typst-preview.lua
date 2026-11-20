pack("https://github.com/chomosuke/typst-preview.nvim")

require("typst-preview").setup({
    get_root = function()
        return vim.lsp.get_clients({ name = "tinymist" })[1].config.settings.rootPath or vim.fn.getcwd()
    end,
    open_cmd = "sh -c 'librewolf --new-window \"%s\"'",
})
