vim.loader.enable()
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.hidden = true
vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.laststatus = 3
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.opt.wrap = false
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
vim.opt.cursorline = true
-- vim.opt.colorcolumn = "80"
-- vim.opt.colorcolumn = "99"
vim.g.highlightedyank_highlight_duration = 200
vim.g.netrw_banner = 0
-- vim.g.netrw_winsize = 20
vim.g.netrw_fastbrowse = 0
vim.api.nvim_set_hl(0, "Comment", { italic = true })
vim.o.winborder = "rounded"

require("config.lazy")
require("config.colors")

vim.lsp.enable("gopls")
vim.lsp.config("gopls", {
	cmd = { "gopls" },
	filetypes = { "go" },
	settings = {
		gopls = {
			completeUnimported = true,
			completionDocumentation = true,
			hoverKind = "FullDocumentation",
			usePlaceholders = false,
			buildFlags = { "-tags=prod,local,dev,stage" },
			directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
			hints = {
				assignVariableTypes = true,
				compositeLiteralFields = true,
				compositeLiteralTypes = true,
				constantValues = true,
				functionTypeParameters = true,
				parameterNames = true,
				rangeVariableTypes = true,
			},
			analyses = {
				unreachable = true,
				unusedparams = true,
				unusedwrite = true,
			},
			codelenses = {
				generate = true,
				tidy = true,
				upgrade_dependency = true,
				vendor = true,
			},
			staticcheck = true,

			-- new config
			-- gofumpt = true,
			-- semanticTokens = true,
		},
	},
	autostart = true,
})

vim.lsp.enable("luals")
vim.lsp.config("luals", {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	settings = {
		Lua = {
			format = {
				enable = true,
				-- Put format options here
				-- NOTE: the value should be STRING!!
				defaultConfig = {
					indent_style = "space",
					indent_size = "4",
				},
			},
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

vim.diagnostic.config({
	-- virtual_text = true,
	virtual_lines = true,
	signs = true,
	update_in_insert = true,
	-- float = true,
	float = {
		header = false,
		border = "single",
		focusable = true,
		source = true, -- Or "if_many"
		prefix = "",
	},
	underline = false,
	severity_sort = true,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	callback = function()
		vim.lsp.buf.code_action({
			context = {
				only = { "source.organizeImports" },
				diagnostics = {},
			},
			apply = true,
		})
		vim.lsp.buf.format({ async = false })
	end,
})

vim.cmd([[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=400}
augroup END
]])

vim.keymap.set("n", "gt", function()
	vim.lsp.buf.type_definition()
end, {})

vim.api.nvim_set_keymap(
	"n",
	"<leader>do",
	"<cmd>lua vim.diagnostic.open_float()<CR>",
	{ noremap = true, silent = true }
)

vim.keymap.set("n", "<leader>cp", '<cmd>let @+ = expand("%:p")<CR>', { desc = "Copy File Path" })
vim.keymap.set("n", "<Leader>bd", ":bdelete<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>:bdelete<CR>", { desc = "Close Buffer" })
vim.keymap.set("v", "K", ":m  '>-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m  '>+1<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("n", "<Tab>", ":bn<CR>")
vim.keymap.set("n", "<S-Tab>", ":bp<CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR>")
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")
vim.keymap.set("n", "[e", "<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR})<CR>")
vim.keymap.set("n", "]e", "<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR})<CR>")
vim.keymap.set("n", "<silent><C-]>", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("n", "F", ":Format<CR>")
vim.keymap.set("n", "<C-e>", ":Explore<CR>")
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("v", "p", '"_dP')
vim.keymap.set("n", "<leader>h", "<cmd>cnext<CR>zz", { desc = "Forward qfixlist" })
vim.keymap.set("n", "<leader>;", "<cmd>cprev<CR>zz", { desc = "Backward qfixlist" })
vim.keymap.set("n", "<leader>q", "<cmd>:bdelete<CR>", { desc = "Close Buffer" })
vim.keymap.set("n", "<leader>cp", '<cmd>let @+ = expand("%:p")<CR>', { desc = "Copy File Path" })
vim.keymap.set("n", "<leader>ne", ":Neogit<CR>", { desc = "Neogit" })
vim.keymap.set("n", "<leader>td", ":FzfLua diagnostics_workspace<CR>", { desc = "diagnostics" })
vim.keymap.set("n", "<leader><space>", ":FzfLua files<CR>", { desc = "diagnostics" })
vim.keymap.set("n", "<leader><Tab>", ":FzfLua buffers<CR>", { desc = "diagnostics" })
vim.keymap.set("n", "<leader>fu", ":FzfLua grep_cword<CR>", { desc = "diagnostics" })
vim.keymap.set("n", "<leader>fw", ":FzfLua grep<CR>", { desc = "diagnostics" })
vim.keymap.set("n", "R", ":FzfLua lsp_references<CR>", { desc = "diagnostics" })
vim.keymap.set("n", "<leader>la", ":copen<CR>:AsyncRun make lintall<CR>", { desc = "make lintall" })
vim.keymap.set("n", "<leader>lr", ":copen<CR>:AsyncRun revive ./...<CR>", { desc = "make lintall" })
vim.keymap.set("n", "<leader>ll", ":copen<CR>:AsyncRun golangci-lint  run ./...<CR>", { desc = "make lintall" })
vim.keymap.set("n", "<leader>lc", ":copen<CR>:AsyncRun go tool gocritic check ./...<CR>", { desc = "gocritic" })
vim.keymap.set("n", "gt", function()
	vim.lsp.buf.type_definition()
end, {})

vim.keymap.set("n", "<leader>oi", function()
	vim.lsp.buf.code_action({
		context = { only = { "source.organizeImports" } },
		apply = true,
	})
end, { desc = "Organize imports" })
