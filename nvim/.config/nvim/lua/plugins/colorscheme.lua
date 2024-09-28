return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"Yazeed1s/minimal.nvim",
		config = function()
			-- vim.cmd.colorscheme("minimal")
		end,
	},
}
