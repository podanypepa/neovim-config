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
		{
			"folke/lazydev.nvim",
			ft = "lua", -- only load on lua files
			opts = {
				library = {
					-- See the configuration section for more details
					-- Load luvit types when the `vim.uv` word is found
					{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
				},
			},
		},
	},

	config = function()
		local lsp_zero = require("lsp-zero")
		local config = require("lspconfig")
		local util = require("lspconfig/util")

		-- local capabilities = require('blink.cmp').get_lsp_capabilities()
		local capabilities =
			require("cmp_nvim_lsp").default_capabilities(), lsp_zero.extend_lspconfig({
				sign_text = true,
				-- lsp_attach = lsp_attach,
				-- capabilities = require("cmp_nvim_lsp").default_capabilities(),
				float_border = "rounded",
			})

		require("lspconfig").lua_ls.setup({
			capabilities = capabilities,
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
		config.rust_analyzer.setup({
			capabilities = capabilities,
			filetypes = { "rust" },
			root_dir = util.root_pattern("Cargo.toml"),
			settings = {
				["rust-analyzer"] = {
					cargo = {
						allFeatures = true,
					},
					diagnostics = {
						enable = true,
					},
				},
			},
		})
		config.gopls.setup({
			capabilities = capabilities,
			settings = {
				gopls = {
					completeUnimported = true,
					completionDocumentation = true,
					hoverKind = "FullDocumentation",
					usePlaceholders = true,
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
					},
					codelenses = {
						generate = true,
						tidy = true,
						upgrade_dependency = true,
						vendor = true,
					},
					-- new config
					-- gofumpt = true,
					-- semanticTokens = true,
				},
			},
			autostart = true,
		})

		config.zls.setup({})

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*.go",
			callback = function()
				local params = vim.lsp.util.make_range_params()
				params.context = { only = { "source.organizeImports" } }
				local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 1000)
				for _, res in pairs(result or {}) do
					for _, action in pairs(res.result or {}) do
						if action.edit then
							vim.lsp.util.apply_workspace_edit(action.edit, "utf-8")
						end
					end
				end
			end,
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
				-- border = "rounded",
				border = "single",
				source = "always", -- Or "if_many"
				header = "",
				prefix = "",
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
