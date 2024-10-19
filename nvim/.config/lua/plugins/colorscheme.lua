return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			-- require("catppuccin").setup({
			--     transparent_background = true,
			-- })
			-- vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"rose-pine/neovim",
		config = function()
			-- require("rose-pine").setup({
			-- 	disable_background = true,
			-- })
			-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			vim.cmd.colorscheme("rose-pine")
		end,
	},
}
