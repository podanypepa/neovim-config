return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v4.x",
	dependencies = {
		{ "neovim/nvim-lspconfig" },                             -- Required
		{ "williamboman/mason.nvim" },                           -- Optional
		{ "williamboman/mason-lspconfig.nvim" },                 -- Optional
		{ "hrsh7th/nvim-cmp",                 event = "InsertEnter" }, -- Required
		{ "hrsh7th/cmp-nvim-lsp" },                              -- Required
		{ "FelipeLema/cmp-async-path" },
		{ "hrsh7th/cmp-buffer" },
		{ "L3MON4D3/LuaSnip" }, -- Required
		{ "hrsh7th/cmp-nvim-lua" },
	},
	config = function()
		local lsp_zero = require("lsp-zero")
		local config = require("lspconfig")

		lsp_zero.extend_lspconfig({
			sign_text = true,
			-- lsp_attach = lsp_attach,
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
			float_border = "rounded",
		})

		require("lspconfig").lua_ls.setup({
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
		config.gopls.setup({
			autostart = true,

		})
		lsp_zero.on_attach(function(client, bufnr)
			local opts = { buffer = bufnr, remap = false }
			-- see :help lsp-zero-keybindings
			-- to learn the available actions
			lsp_zero.default_keymaps({ buffer = bufnr })
			vim.keymap.set("n", "<leader>ws", function()
				vim.lsp.buf.workspace_symbol()
			end, opts)
			vim.keymap.set("n", "<leader>rf", function()
				vim.lsp.buf.references()
			end, opts)
		end)

		lsp_zero.setup()
		lsp_zero.format_on_save({
			format_opts = {
				async = false,
				timeout_ms = 10000,
			},
			servers = {
				["tsserver"] = { "javascript", "typescript" },
				["gopls"] = { "go" },
				["rust_analyzer"] = { "rust" },
				["lua_ls"] = { "lua" },
			},
		})
		vim.diagnostic.config({
			virtual_text = true,
			signs = true,
			update_in_insert = true,
			-- float = true,
			float = {
				border = "rounded",
				-- source = "always", -- Or "if_many"
			},
			-- underline = true,
			underline = false,
		})

		-- additional filetypes
		vim.filetype.add({
			extension = {
				templ = "templ",
			},
		})
	end,
}
