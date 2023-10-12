local lsp = require("lsp-zero").preset({})

lsp.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp.default_keymaps({ buffer = bufnr })
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
	underline = true,
})

-- additional filetypes
vim.filetype.add({
	extension = {
		templ = "templ",
	},
})
