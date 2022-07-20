return require('packer').startup(function()
	use { "nathom/filetype.nvim" }

	use 'wbthomason/packer.nvim'
	use 'lewis6991/impatient.nvim'
	require('impatient')
	use 'gruvbox-community/gruvbox'

	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make'
	}
	require('telescope').setup({
		defaults = {
			layout_config = {
				vertical = {
					width = 0.8,
				},
			},
			file_ignore_patterns = {
				"./node_modules/*",
				"node_modules",
				"^node_modules/*",
				"node_modules/*",
				"./vendor/*",
				"^vendor/*",
				"vendor",
			},
		},
	})

	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		},
	}
	require("pepa/nvimtree")

	use 'hrsh7th/cmp-nvim-lsp-signature-help'

	use "lukas-reineke/lsp-format.nvim"
	-- nvim LSP configs
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/cmp-vsnip'
	use 'williamboman/nvim-lsp-installer'
	require("pepa/cmp")
	require("pepa/lsp")

	use 'nvim-lua/popup.nvim'
	use 'jiangmiao/auto-pairs'

	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
	require("pepa/treesitter")

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	require("pepa/lualine")

	use {
		'lewis6991/gitsigns.nvim',
	}
	require('pepa/gitsigns')

	use 'tpope/vim-fugitive'

	use 'numToStr/Comment.nvim'
	require('Comment').setup()

	use 'machakann/vim-highlightedyank'
	use 'moll/vim-bbye'
	use { 'junegunn/fzf', run = './install --bin', }
	use 'junegunn/fzf.vim'

	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup {
			}
		end
	}

end)
