return {
	"liadoz/nvim-dap-repl-highlights",
	lazy = true,
	config = function()
		require('nvim-treesitter.configs').setup {
			highlight = {
				enable = true,
			},
			ensure_installed = { 'dap_repl' },
		}
	end
}
