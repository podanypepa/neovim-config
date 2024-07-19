return {
	"folke/trouble.nvim",
	opts = {
		-- position = "top",
		-- padding = false,
		padding = true,
	},
	keys = {
		{
			"<leader>td",
			"<cmd>Trouble diagnostics toggle focus=true<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"R",
			"<cmd>Trouble lsp_references toggle focus=true<cr>",
			desc = "Diagnostics (Trouble)",
		},
	},
}
