return {
	{
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require("nvim-highlight-colors").setup({
				---@usage 'background'|'foreground'|'virtual'
				render = "virtual",
			})
		end,
	},
	{
		"razak17/tailwind-fold.nvim",
		opts = {},
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		ft = { "html", "typescriptreact", "blade", "tsx", "jsx" },

	},
}
-- npm i -g tailwindcss-languague-server
