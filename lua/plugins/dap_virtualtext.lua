return {
	"theHamsta/nvim-dap-virtual-text",
	lazy = true,
	config = function()
		require("nvim-dap-virtual-text").setup {
			enable = true,
			enabled_commands = true,
			highlight_changed_variables = true,
			highlight_new_as_changed = true,
			show_stop_reason = true,
		}
	end

}
