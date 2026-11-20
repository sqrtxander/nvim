pack({ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" })

vim.api.nvim_create_autocmd("PackChanged", {
    callback = function(event)
        if
            event.data.spec.name == "nvim-treesitter"
            and (event.data.kind == "install" or event.data.kind == "update")
        then
            if not event.data.active then
                vim.cmd.packadd("nvim-treesitter")
            end
            require("nvim-treesitter").update(nil, { summary = true })
        end
    end,
})

local ts = require("nvim-treesitter")
local group = vim.api.nvim_create_augroup("xander-treesitter", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
    group = group,
    callback = function(event)
        pcall(vim.treesitter.start, event.buf)
    end,
    desc = "Start treesitter automatically",
})

local ensure_installed = {
    "bash",
    "css",
    "gitignore",
    "html",
    "http",
    "javascript",
    "json",
    "just",
    "latex",
    "lua",
    "luadoc",
    "luap",
    "markdown",
    "markdown_inline",
    "nix",
    "python",
    "r",
    "regex",
    "rnoweb",
    "rust",
    "sql",
    "toml",
    "tsx",
    "typescript",
    "typst",
    "vim",
    "vimdoc",
    "yaml",
}

local installed = ts.get_installed()
local to_install = vim.tbl_filter(function(lang)
    return not vim.tbl_contains(installed, lang)
end, ensure_installed or {})

if #to_install > 0 then
    vim.schedule(function()
        ts.install(to_install, { summary = true })
    end)
end
