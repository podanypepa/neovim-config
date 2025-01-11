vim.loader.enable()
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.loaded_python3_provider = 0
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.hidden = true
vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.laststatus = 3
vim.opt.wrap = false
vim.opt.clipboard = "unnamedplus"
vim.g.nohlsearch = true
vim.g.noerrorbells = true
vim.g.novisualbell = true
vim.g.autoindent = true
vim.g.smartindent = true
vim.g.backspace = "indent,eol,start"
vim.g.noswapfile = true
vim.g.nobackup = true
vim.g.nowritebackup = true
vim.g.autowrite = true
vim.g.spliteright = true
vim.g.lazyredraw = true
-- vim.g.scrolloff = 4
vim.g.noshowmode = true
vim.g.cmdheight = 2
vim.g.updatetime = 50
vim.g.ttyfast = true
vim.g.confirm = true
vim.g.autoread = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.opt.signcolumn = "yes"
-- vim.opt.colorcolumn = "80"
-- vim.opt.colorcolumn = "99"
vim.g.highlightedyank_highlight_duration = 200
vim.g.netrw_banner = 0
-- vim.g.netrw_winsize = 20
vim.g.netrw_fastbrowse = 0
vim.api.nvim_set_hl(0, "Comment", { italic = true })

vim.o.background = "dark"
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = "gray", bg = "none" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "Orange1", bg = "none" })

vim.cmd([[
highlight clear SignColumn
"hi CursorLineNr guibg=none
hi DiagnosticSignWarn guifg=orange ctermbg=none
hi DiagnosticSignError guifg=red ctermbg=none
hi DiagnosticSignInfo guifg=Blue ctermbg=none
hi DiagnosticSignHint guifg=gray ctermbg=none
hi GitSignsAdd guifg=Green3 guibg=none
hi GitSignsChange guifg=Yellow2 guibg=none
hi GitSignsDelete guifg=OrangeRed1 guibg=none
hi Pmenu guibg=NONE ctermbg=none
hi WinSeparator guibg=NONE
"hi StatusLine guifg=lightgray guibg=none
hi StatusLine guifg=orange guibg=none
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
]])

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	checker = { enabled = false },
	change_detection = { enabled = false },
	performance = {
		cache = {
			enabled = true,
		},
		reset_packpath = true,
		rtp = {
			reset = true,
		}
	},
	ui = {
		size = { width = 0.9, height = 0.8 },
		border = "rounded",
	},
})

vim.cmd([[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=400}
augroup END
]])

-- vim.opt.guicursor =
-- "n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,o:hor50-Cursor/lCursor"
-- vim.api.nvim_set_hl(0, "Cursor", { fg = "NONE", bg = "yellow" })
-- vim.api.nvim_set_hl(0, "lCursor", { fg = "NONE", bg = "#00ff00" })
