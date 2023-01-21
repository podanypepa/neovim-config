vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("lewis6991/impatient.nvim")
	use("kyazdani42/nvim-web-devicons")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope-file-browser.nvim" })
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use("gruvbox-community/gruvbox")
	use("tpope/vim-fugitive")
	use({ "lewis6991/gitsigns.nvim" })
	use("numToStr/Comment.nvim")
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
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
	})
	use({ "mhartington/formatter.nvim" })
	use("dnlhc/glance.nvim")
	use("ThePrimeagen/harpoon")
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"kyazdani42/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	})
	use("moll/vim-bbye")
	use("machakann/vim-highlightedyank")
	use({
		"ray-x/lsp_signature.nvim",
	})
	require("lsp_signature").setup()
end)
