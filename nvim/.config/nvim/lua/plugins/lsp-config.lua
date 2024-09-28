return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
		vim.fn.sign_define("DiagnosticSignError", { text = "✘", texthl = "DiagnosticSignError" })

		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})
		lspconfig.jsonls.setup({
			capabilities = capabilities,
		})
		lspconfig.sqlls.setup({
			capabilities = capabilities,
		})
		lspconfig.csharp_ls.setup({
			capabilities = capabilities,
		})
		lspconfig.ts_ls.setup({
			capabilities = capabilities,
		})
		lspconfig.tailwindcss.setup({
			capabilities = capabilities,
		})
		lspconfig.cssls.setup({
			capabilities = capabilities,

			-- npm install -g vscode-css-languageservice
			-- npm i -g vscode-langservers-extracted
			cmd = { "vscode-css-language-server", "--stdio" },
			filetypes = { "css", "scss", "less" },
			init_options = { provideFormatter = true },
			single_file_support = true,
			settings = {
				css = {
					validate = true,
				},
				less = {
					validate = true,
				},
				scss = {
					validate = true,
				},
			},
		})
		lspconfig.html.setup({
			-- npm install -g html-languageserver-bin
			capabilities = capabilities,
			cmd = { "vscode-html-language-server", "--stdio" },
			filetypes = { "html", "templ" },
			single_file_support = true,
			settings = {
				html = {
					validate = true,
					format = {
						templating = true,
					},
				},
			},
			init_options = {
				provideFormatter = true,
				embeddedLanguages = { css = true, javascript = true },
				configurationSection = { "html", "css", "javascript" },
			},
		})

		vim.keymap.set("n", "<Space>k", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
		vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
		vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, {})
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
	end,
}
