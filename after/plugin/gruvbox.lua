require("gruvbox").setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		emphasis = true,
		strings = true,
		comments = true,
		operators = false,
		folds = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true,
	contrast = "hard",
	palette_overrides = {},
	overrides = {},
	dim_inactive = false,
	transparent_mode = false,
})

vim.o.background = "dark"
vim.cmd("colorscheme gruvbox")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "gray", bg = "none" })

vim.cmd([[
highlight clear SignColumn
hi CursorLineNr guibg=none
hi DiagnosticSignWarn guifg=orange ctermbg=none
hi DiagnosticSignError guifg=red ctermbg=none
hi DiagnosticSignInfo guifg=Blue ctermbg=none
hi DiagnosticSignHint guifg=gray ctermbg=none
hi GitSignsAdd guifg=Green3 guibg=none
hi GitSignsChange guifg=Yellow2 guibg=none
hi GitSignsDelete guifg=OrangeRed1 guibg=none
hi Pmenu guibg=NONE ctermbg=none
hi WinSeparator guibg=NONE

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
]])

-- nvim colors
-- https://vim.fandom.com/wiki/Xterm256_color_names_for_console_Vim
