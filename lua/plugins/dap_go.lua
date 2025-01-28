return {
	"leoluz/nvim-dap-go",
	lazy = true,
	config = function()
		require("dap-go").setup({
			dap_configurations = {
				{
					type = "go",
					name = "Attach remote",
					mode = "remote",
					request = "attach",
				},
			},
			delve = {
				path = "dlv",
			},
			tests = {
				verbose = true,
			},
		})
	end,
}
