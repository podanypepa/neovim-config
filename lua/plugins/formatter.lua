return {
	"mhartington/formatter.nvim",
	config = function()
		local util = require("formatter.util")
		require("formatter").setup({
			logging = true,
			log_level = vim.log.levels.WARN,
			filetype = {
				go = {
					-- require("formatter.filetypes.go").gofmt,
					require("formatter.filetypes.go").gofumpt,
					-- require("formatter.filetypes.go").goimports,
				},
				rust = {
					require("formatter.filetypes.rust").rustfmt,
				},
				json = {
					function()
						return {
							exe = "jq",
							args = { "--indent 4", "." },
							stdin = true,
						}
					end,
				},
				javascript = {
					require("formatter.filetypes.javascript").prettier,
				},
				typescript = {
					require("formatter.filetypes.typescript").prettier,
				},
				html = {
					require("formatter.filetypes.html").prettier,
				},
				css = {
					require("formatter.filetypes.css").prettier,
				},
				zig = {
					function()
						return {
							exe = "zig",
							args = { "fmt", "." },
							stdin = true,
						}
					end
				},
				python = {
					require("formatter.filetypes.python").black,
				},
				lua = {
					require("formatter.filetypes.lua").stylua,

					function()
						if util.get_current_buffer_file_name() == "special.lua" then
							return nil
						end

						return {
							exe = "stylua",
							args = {
								"--search-parent-directories",
								"--stdin-filepath",
								util.escape_path(util.get_current_buffer_file_path()),
								"--",
								"-",
							},
							stdin = true,
						}
					end,
				},

				["*"] = {
					require("formatter.filetypes.any").remove_trailing_whitespace,
				},
			},
		})
	end,
}
