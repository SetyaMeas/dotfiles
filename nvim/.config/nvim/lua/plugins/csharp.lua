return {
    -- "neovim/nvim-lspconfig",
    -- config = function()
    --     local lspconfig = require("lspconfig")
    --     local capabilities = require("cmp_nvim_lsp").default_capabilities()
    --     local omnisharp_bin = "/usr/local/bin/omnisharp-roslyn/OmniSharp.dll"

    --     lspconfig.omnisharp.setup({
    --         capabilities = capabilities,
    --         cmd = { "dotnet", omnisharp_bin },
    --         on_attach = function(client, bufnr)
    --             vim.keymap.set("n", "<Space>k", vim.lsp.buf.hover, {})
    --             vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
    --             vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
    --             vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, {})
    --             vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
    --         end,
    --     })
    -- end,
}

-- install mono: sudo pacamn -S mono
-- install msbuild: sudo pacman -S mono-msbuild
-- then run: ":OmnisharpIntall" on Mason
-- install dotnet-runtime, dotnet-sdk, aspnet-runtime
