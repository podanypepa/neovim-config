return {
	"rust-lang/rust.vim",
	lazy = true,
	ft = "rust",
	init = function()
		vim.g.rustfmt_autosave = 1
	end,
}
