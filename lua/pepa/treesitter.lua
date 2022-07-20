require 'nvim-treesitter.configs'.setup {
	auto_install = true,
	sync_install = false,
	indent = {
		enable = true,
	},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	ensure_installed = { "json", "go", "lua", "make", "markdown", "markdown_inline", "yaml" }
}

-- local ts_utils = require 'nvim-treesitter.ts_utils'
