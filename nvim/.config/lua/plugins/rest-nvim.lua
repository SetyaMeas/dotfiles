return {
	"rest-nvim/rest.nvim",
	dependencies = {
		"rest-nvim/tree-sitter-http",
	},
	config = function()
		vim.keymap.set("n", "<Space>R", function()
			vim.cmd("Rest run")
		end)
	end,
}
