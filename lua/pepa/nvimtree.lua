require'nvim-tree'.setup {
	disable_netrw       = false,
	hijack_cursor       = false,
	hijack_netrw = true,
	sort_by = "name",
	-- auto_close = true,
	view = {
		width = 50,
		side = "right",
		number = false,
		signcolumn = "yes",
	},
	renderer = {
		icons = {
			webdev_colors = true,
			git_placement = "before",
			glyphs = {
				default = "",
				symlink = "",
				folder = {
					arrow_closed = "",
					arrow_open = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "✗",
					staged = "✓",
					unmerged = "",
					renamed = "➜",
					untracked = "★",
					deleted = "",
					ignored = "◌",
				},
			}
		}
	}
}
