return {
	"NeogitOrg/neogit",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim", -- required
		"sindrets/diffview.nvim", -- optional - Diff integration

		-- Only one of these is needed, not both.
		"nvim-telescope/telescope.nvim", -- optional
		-- "ibhagwan/fzf-lua",        -- optional
	},
	config = function()
		require("telescope").setup({
			defaults = {
				layout_strategy = "vertical",
			}
		})
		require("neogit").setup({
			commit_view = {
				kind = "split",
				verify_commit = vim.fn.executable("gpg") == 1, -- Can be set to true or false, otherwise we try to find the binary
			},
		})
	end,
}
