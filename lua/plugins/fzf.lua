return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("fzf-lua").setup({
			fzf_bin = "sk",
			file_icon_padding = " ",
			winopts = {
				preview = {
					layout = "vertical",
					title = true,
					title_pos = "left",
				},
			},
		})
	end,
}
