return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"mason-org/mason.nvim",
			"mason-org/mason-lspconfig.nvim",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"tailwindcss-language-server",
					"html-lsp"

				},
				automatic_installation = true,
			})

			local lspconfig = require("lspconfig")
		end
	},
}
