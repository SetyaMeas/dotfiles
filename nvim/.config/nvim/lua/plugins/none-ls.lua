return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier.with({
                    extra_args = { "--tab-width", "4" }
                }),
                null_ls.builtins.formatting.csharpier,
                --null_ls.builtins.diagnostics.eslint_d,
            },
        })

        vim.keymap.set("n", "<Space>fm", vim.lsp.buf.format, {})
    end,
}
