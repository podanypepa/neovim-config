return {
	"williamboman/mason.nvim", -- Optional
	dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/mason-lspconfig.nvim", -- Optional
	},
	config = function()
		require("mason").setup({
			ui = {
				border = "rounded",
			},
		})
		require("mason-lspconfig").setup()
	end,
}
