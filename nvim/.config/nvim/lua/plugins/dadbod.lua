return {
	{
		"tpope/vim-dadbod",
		"kristijanhusak/vim-dadbod-ui",
		"kristijanhusak/vim-dadbod-completion",
	},
	{
		"kristijanhusak/vim-dadbod-ui",
		dependencies = {
			{ "tpope/vim-dadbod", lazy = true },
			{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true }, -- Optional
		},
		cmd = {
			"DBUI",
			"DBUIToggle",
			"DBUIAddConnection",
			"DBUIFindBuffer",
		},
		init = function()
			vim.g.db_ui_use_nerd_fonts = 1

			vim.keymap.set("n", "<C-b>", ":DBUIToggle<CR>")
		end,
		config = function()
			local cmp = require("cmp")
			cmp.setup.buffer({ sources = { { name = "vim-dadbod-completion" } } })
		end,
	},
}
