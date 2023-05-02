return require("lazy").setup({
	"lewis6991/impatient.nvim",
	"kyazdani42/nvim-web-devicons",
	"nvim-telescope/telescope-file-browser.nvim",
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			-- dependencies = ("nvim-autopairs").setup({})
			require("nvim-autopairs").setup({})
		end,
	},
	"gruvbox-community/gruvbox",
	"tpope/vim-fugitive",
	"lewis6991/gitsigns.nvim",
	"mfussenegger/nvim-dap",
	"theHamsta/nvim-dap-virtual-text",
	"rcarriga/nvim-dap-ui",
	"numToStr/Comment.nvim",
	{ "nvim-treesitter/nvim-treesitter" },
	-- { "nvim-treesitter/nvim-treesitter", { build = ":TSUpdate" }},
	{
		"VonHeikemen/lsp-zero.nvim",
		-- branch = "v2.x",
		branch = "v1.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	},
	"mhartington/formatter.nvim",
	"dnlhc/glance.nvim",
	"ThePrimeagen/harpoon",
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},
	"moll/vim-bbye",
	"machakann/vim-highlightedyank",
	"ray-x/lsp_signature.nvim",
	-- require("lsp_signature").setup(),
})
