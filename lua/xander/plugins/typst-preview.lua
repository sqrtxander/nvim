if vim.fn.executable("typst") ~= 1 then
    vim.notify("`typst` is not executable", vim.log.levels.INFO)
    return
end

pack("https://github.com/chomosuke/typst-preview.nvim")

require("typst-preview").setup({
    get_root = function()
        local client = vim.lsp.get_clients({ name = "tinymist" })[1]
        local settings = (client and client.config.settings) or {}
        return settings.rootPath or vim.fn.getcwd()
    end,
    dependencies_bin = {
        tinymist = "tinymist",
        websocat = "websocat",
    },
    open_cmd = "sh -c 'librewolf --new-window \"%s\"'",
})
