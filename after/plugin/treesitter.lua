require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"lua",
		"rust",
		"go",
		"vim",
		"json",
		"yaml",
		"javascript",
		"svelte",
		"bash",
		"typescript",
		"markdown",
		"html",
	},

	sync_install = false,
	auto_install = true,

	highlight = {
		enable = true,
		disable = function(lang, buf)
			local max_filesize = 100 * 1024 -- 100 KB
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_filesize then
				return true
			end
		end,
		additional_vim_regex_highlighting = false,
	},
})

local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
treesitter_parser_config.templ = {
	install_info = {
		url = "https://github.com/vrischmann/tree-sitter-templ.git",
		files = { "src/parser.c", "src/scanner.c" },
		branch = "master",
	},
}

vim.treesitter.language.register("templ", "templ")
