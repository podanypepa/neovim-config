vim.loader.enable()
vim.o.background = "dark"
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
vim.opt.colorcolumn = "99"
vim.g.highlightedyank_highlight_duration = 200

vim.g.netrw_banner = 0
-- vim.g.netrw_winsize = 20
vim.g.netrw_fastbrowse = 0

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ "folke/neodev.nvim", opts = {} },
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"sindrets/diffview.nvim", -- optional - Diff integration

			-- Only one of these is needed, not both.
			"nvim-telescope/telescope.nvim", -- optional
			"ibhagwan/fzf-lua", -- optional
		},
		config = function()
			require("neogit").setup({
				commit_view = {
					kind = "split",
					verify_commit = vim.fn.executable("gpg") == 1, -- Can be set to true or false, otherwise we try to find the binary
				},
			})
		end,
	},

	-- { "github/copilot.vim" },
	-- {
	-- 	"zbirenbaum/copilot.lua",
	-- 	cmd = "Copilot",
	-- 	event = "InsertEnter",
	-- },
	-- {
	-- 	"zbirenbaum/copilot-cmp",
	-- 	config = function()
	-- 		require("copilot_cmp").setup()
	-- 	end,
	-- },
	-- { "ellisonleao/gruvbox.nvim", priority = 1000 },
	-- { "projekt0n/github-nvim-theme" },
	{ "mhartington/formatter.nvim" },
	{ "machakann/vim-highlightedyank" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "neovim/nvim-lspconfig" },
	{ "nvim-treesitter/nvim-treesitter" },
	{ "moll/vim-bbye" },
	{ "kyazdani42/nvim-web-devicons" },
	-- { "diepm/vim-rest-console" },
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	},
	-- { "tpope/vim-fugitive" },
	{ "lewis6991/gitsigns.nvim" },
	-- {
	-- 	"numToStr/Comment.nvim",
	-- 	-- event = { "BufReadPre", "BufNewFile" },
	-- 	config = function()
	-- 		require("Comment").setup()
	-- 	end,
	-- },
	{ "dnlhc/glance.nvim" },
	{
		"folke/trouble.nvim",
		opts = {
			-- position = "top",
			-- padding = false,
			padding = true,
		},
		keys = {
			{
				"<leader>td",
				"<cmd>Trouble diagnostics toggle focus=true<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"R",
				"<cmd>Trouble lsp_references toggle focus=true<cr>",
				desc = "Diagnostics (Trouble)",
			},
		},
	},
	{
		"VonHeikemen/lsp-zero.nvim",
		-- branch = "v2.x",
		branch = "v4.x",
		dependencies = {
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional
			{ "hrsh7th/nvim-cmp", event = "InsertEnter" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "FelipeLema/cmp-async-path" },
			{ "hrsh7th/cmp-buffer" },
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "hrsh7th/cmp-nvim-lua" },
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	-- {
	-- 	"folke/todo-comments.nvim",
	-- 	dependencies = { "nvim-lua/plenary.nvim" },
	-- 	-- TODO: pepa
	-- 	opts = {
	-- 		signs = true,
	-- 		gui_style = {
	-- 			fg = "NONE", -- The gui style to use for the fg highlight group.
	-- 			bg = "BOLD", -- The gui style to use for the bg highlight group.
	-- 		},
	-- 		keywords = {
	-- 			TODO = {
	-- 				color = "#DC2626",
	-- 			},
	-- 			NOTE = {
	-- 				color = "test",
	-- 			},
	-- 		},
	-- 		colors = {
	-- 			error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
	-- 			warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
	-- 			info = { "DiagnosticInfo", "#2563EB" },
	-- 			hint = { "DiagnosticHint", "#10B981" },
	-- 			default = { "Identifier", "#7C3AED" },
	-- 			test = { "Identifier", "#FF00FF" },
	-- 		},
	-- 	},
	-- },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{ "vrischmann/tree-sitter-templ" },
	-- {
	-- 	"mfussenegger/nvim-dap",
	-- 	dependencies = {
	-- 		"rcarriga/nvim-dap-ui",
	-- 		"leoluz/nvim-dap-go",
	-- 	},
	-- 	config = function()
	-- 		local dap = require("dap")
	-- 		local dapui = require("dapui")
	--
	-- 		dapui.setup()
	-- 		require("dap-go").setup()
	--
	-- 		dap.listeners.before.attach.dapui_config = function()
	-- 			dapui.open()
	-- 		end
	-- 		dap.listeners.before.launch.dapui_config = function()
	-- 			dapui.open()
	-- 		end
	-- 		dap.listeners.before.event_terminated.dapui_config = function()
	-- 			dapui.close()
	-- 		end
	-- 		dap.listeners.before.event_exited.dapui_config = function()
	-- 			dapui.close()
	-- 		end
	-- 		vim.keymap.set("n", "sb", function()
	-- 			dap.toggle_breakpoint()
	-- 		end)
	-- 		vim.keymap.set("n", "sc", dap.continue, {})
	-- 		vim.keymap.set({ "n", "v" }, "sh", function()
	-- 			require("dap.ui.widgets").hover()
	-- 		end)
	-- 		vim.keymap.set("n", "so", function()
	-- 			dap.step_over()
	-- 		end)
	-- 		vim.keymap.set("n", "si", function()
	-- 			dap.step_into()
	-- 		end)
	-- 		vim.keymap.set("n", "sr", function()
	-- 			dap.repl.open()
	-- 		end)
	-- 	end,
	-- },
})

vim.api.nvim_set_hl(0, "Comment", { italic = true })
