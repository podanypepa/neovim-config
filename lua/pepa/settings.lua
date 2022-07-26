vim.g.mapleader = " "
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.hidden = true
vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.laststatus=3
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
vim.opt.splitbelow = true  
vim.g.lazyredraw = true
vim.g.scrolloff = 4
vim.g.noshowmode = true
vim.g.cmdheight = 2
vim.g.updatetime = 50
vim.g.colorcolumn = 81
vim.g.ttyfast = true
vim.g.confirm = true
vim.g.autoread = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.cmd[[
	set path+=**
	set diffopt+=vertical
	set wildignore+=.DS_Store
	set wildignore+=**/node_modules/**
	set wildignore+=*.pyc
	set wildignore+=.git
	set wildignore+=*/node_modules/**
	set wildignore+=**/.git/*
	set formatoptions-=cro
	set completeopt=menu,menuone,noselect
]]
vim.g.completeopt = menu,menuone,noselect
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_list_hide = "&wildignore"
vim.g.signcolumn = true

vim.cmd[[colorscheme gruvbox]]
vim.o.background = 'dark'
vim.cmd[[
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
]]
vim.g.gruvbox_invert_selection=0
vim.g.gruvbox_contrast_dark = "hard"
vim.g.gruvbox_italic=1

