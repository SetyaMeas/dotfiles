return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"cssls",
					"tailwindcss",
					"csharp_ls",
					"html",
					"sqlls",
					"jsonls",
					-- "omnisharp",
				},
			})
		end,
	},
}
