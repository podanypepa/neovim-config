return {
	"ribru17/bamboo.nvim",
	lazy = false,
	priority = 1000,
	enabled = false,
	config = function()
		require("bamboo").setup({})
		require("bamboo").load()
	end,
}
