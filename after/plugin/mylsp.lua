local lsp = require("lsp-zero")
lsp.preset("recommended")

lsp.ensure_installed({
	"gopls",
	"tsserver",
	"eslint",
	"sumneko_lua",
})

lsp.nvim_workspace()

lsp.set_preferences({
	suggest_lsp_servers = true,
	setup_servers_on_start = true,
	set_lsp_keymaps = true,
	configure_diagnostics = true,
	cmp_capabilities = true,
	manage_nvim_cmp = true,
	call_servers = "local",
	sign_icons = {
		error = "✘",
		warn = "▲",
		hint = "⚑",
		info = "",
	},
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }
	local bind = vim.keymap.set

	bind("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
	bind("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
	bind("n", "<leader>K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
	bind("n", "<leader>vd", "<cmd>lua vim.diagnostic.open_float()<cr>", opts)
	bind("n", "<leader>[d", "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)
	bind("n", "<leader>]d", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
	bind("n", "<leader>R", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
end)

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	update_in_insert = true,
	float = true,
	underline = true,
})
