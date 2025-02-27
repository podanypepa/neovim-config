return {
	"saecki/crates.nvim",
	event = { "BufRead Cargo.toml" },
	tag = "stable",
	lazy = true,
	config = function()
		require("crates").setup {
			completion = {
				cmp = {
					enabled = true,
				}
			}
		}
		require("cmp").setup.buffer({
			sources = { { name = "crates" } }
		})
	end,
}
