return {
    {
        "hrsh7th/cmp-nvim-lsp",
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")
            require("luasnip.loaders.from_vscode").lazy_load()

            cmp.setup({
                -- formatting = {
                --     format = function(entry, vim_item)
                --         vim_item.menu = ({
                --             rg = '[Rg]',
                --             buffer = '[Buffer]',
                --             nvim_lsp = '[LSP]',
                --             vsnip = '[Snippet]',
                --             tags = '[Tag]',
                --             path = '[Path]',
                --             orgmode = '[Org]',
                --             ['vim-dadbod-completion'] = '[DB]',
                --         })[entry.source.name]
                --         return vim_item
                --     end,
                -- },
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = "luasnip" }, -- For luasnip users.
                    { name = "nvim_lsp" },
                    { name = "vsnip" }, -- For vsnip users.
                    -- { name = 'ultisnips' }, -- For ultisnips users.
                    -- { name = 'snippy' }, -- For snippy users.
                }, {
                        { name = "buffer" },
                    }),
            })
        end,
    },
}

