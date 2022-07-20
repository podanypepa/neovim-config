local custom_gruvbox = require'lualine.themes.gruvbox'

custom_gruvbox.normal.c.bg = '#112233'
custom_gruvbox.insert.c.bg = '#112233'
custom_gruvbox.visual.c.bg = '#112233'
custom_gruvbox.command.c.bg = '#112233'

require('lualine').setup {
	options = {
		theme = auto,
		icons_enabled = true,
		globalstatus = true,
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = ''},
		-- component_separators = { left = '', right = ''},
		-- section_separators = { left = '', right = ''},
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostic', 
			-- {
			-- 'diagnostics',
			-- sources = { 'nvim_lsp' },
			-- sections = { 'error', 'warn', 'info', 'hint' },
			-- diagnostics_color = {
			-- 	-- Same values as the general color option can be used here.
			-- 	error = 'DiagnosticError', -- Changes diagnostics' error color.
			-- 	warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
			-- 	info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
			-- 	hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
			-- },
			-- symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
			-- colored = true,           -- Displays diagnostics status in color if set to true.
			-- update_in_insert = false, -- Update diagnostics in insert mode.
			-- always_visible = false,   -- Show diagnostics even if there are none.
			-- }
		},
		lualine_c = {
			{
					'filename',
					file_status = false, -- displays file status (readonly status, modified status)
					path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute runtime_path
			},
		},
		-- lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_x = {},
		lualine_y = {'progress'},
		lualine_z = {'location'}
  },
}
