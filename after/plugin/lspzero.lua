local lsp = require("lsp-zero").preset({})
local config = require("lspconfig")
lsp.preset("recommended")

-- local lsp = require("lsp-zero").preset({})

config.gopls.setup({
	autostart = true,
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp.default_keymaps({ buffer = bufnr })
	vim.keymap.set("n", "<leader>ws", function()
		vim.lsp.buf.workspace_symbol()
	end, opts)
	vim.keymap.set("n", "<leader>rf", function()
		vim.lsp.buf.references()
	end, opts)
end)

lsp.setup()

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
