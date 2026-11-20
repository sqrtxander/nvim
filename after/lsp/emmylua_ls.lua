local library = vim.api.nvim_get_runtime_file("", true)
local ok, plugins = pcall(vim.pack.get)
if ok then
    for _, plugin in ipairs(plugins) do
        library[#library + 1] = plugin.path
    end
end

---@type vim.lsp.Config
return {
    cmd = { "emmylua_ls" },
    filetypes = { "lua" },
    root_markers = {
        {
            ".stylua.toml",
            "stylua.toml",
        },
        ".git",
    },
    workspace_required = false,
    settings = {
        emmylua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim" } },
            workspace = { library = library },
            format = {
                externalTool = {
                    program = "stylua",
                    args = { "-", "--stdin-filepath", "${file}" },
                    timeout = 5000,
                },
            },
        },
    },
}
