require("conform").setup({
	formatters_by_ft = {
		-- go = { "gofumpt", "goimports", "goimports-reviser", "golines" },
		go = { "gofumpt", "goimports-reviser" },
		rust = { "rustfmt" },
		json = { "prettier" },
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "isort", "black" },
		-- Use a sub-list to run only the first available formatter
		javascript = { { "prettierd", "prettier" } },
		typescript = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		yaml = { "prettier" },
		markdown = { "prettier" },
		sh = { "shfmt" },
	},
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
