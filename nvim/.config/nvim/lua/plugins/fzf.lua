return {
    { "junegunn/fzf", build = "./install --bin" }, 
    {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            -- calling `setup` is optional for customization
            require("fzf-lua").setup({})

            vim.keymap.set("n", "<C-p>", ":FZF<CR>")
        end
    }
}

-- TODO: go to -> https://github.com/BurntSushi/ripgrep/releases
-- TODO: then install ->  ripgrep-14.1.0-i686-pc-windows-msvc.zip
-- TODO: set it up
