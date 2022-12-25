vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.hidden = true
vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.laststatus = 3
vim.opt.clipboard = 'unnamedplus'
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
vim.g.scrolloff = 4
vim.g.noshowmode = true
vim.g.cmdheight = 2
vim.g.updatetime = 50
vim.g.ttyfast = true
vim.g.confirm = true
vim.g.autoread = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = "76"

vim.cmd [[
highlight Normal guibg=none
highlight crsorlinenr cterm=NONE
highlight SignColumn guibg=bg
highlight clear SignColumn
highlight GitSignsAdd ctermfg=2
highlight GitSignsAddNr ctermfg=2
highlight GitSignsChange ctermfg=3
highlight GitSignsChangeNr ctermfg=3
highlight GitSignsDelete ctermfg=1
highlight GitSignsDeleteNr ctermfg=1
highlight CursorLine ctermbg=none
highlight CursorLineNr ctermbg=none
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic
let g:highlightedyank_highlight_duration = 200
highlight HighlightedyankRegion cterm=reverse gui=reverse
set signcolumn=yes
highlight link CompeDocumentation NormalFloat
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE

hi DiagnosticSignError ctermfg=Red ctermbg=none
hi DiagnosticSignWarn ctermfg=214  ctermbg=none
hi DiagnosticSignInfo ctermbg=none
hi DiagnosticSignHint ctermbg=none

" black background customization
highlight Normal guibg=NONE ctermbg=none
highlight Pmenu guibg=NONE ctermbg=none
highlight VertSplit guibg=NONE ctermbg=none

]]

vim.g.gruvbox_invert_selection = 0
vim.g.gruvbox_contrast_dark = "hard"
vim.g.gruvbox_italic = 1

-- vim.api.nvim_create_augroup('AutoFormatting', {})
-- vim.api.nvim_create_autocmd('BufWritePre', {
-- 	pattern = '*.go',
-- 	group = 'AutoFormatting',
-- 	command = "FormatWrite",
-- })
