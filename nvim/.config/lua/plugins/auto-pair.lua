return {
	"windwp/nvim-autopairs",
	config = function()
		require("nvim-autopairs").setup({})
		vim.g.lazy_use_autopairs = 1
	end,
}

