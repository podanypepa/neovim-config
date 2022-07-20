local lspconfig = require "lspconfig"
require("lsp-format").setup {}

local on_attach = function(client)
	require "lsp-format".on_attach(client)
end

lspconfig.gopls.setup {
	-- on_attach = function(client, bufnr)
	-- end,
	on_attach = on_attach,
	cmd = { "gopls", "serve" },
	settings = {
		gopls = {
			hoverKind = "SingleLine", -- TODO Can we do this per request?
			experimentalPostfixCompletions = true,
			analyses = {
				unusedparams = true,
				shadow = true,
			},
			staticcheck = true,
		},
	},
}

function OrgImports(wait_ms)
	local params = vim.lsp.util.make_range_params()
	params.context = { only = { "source.organizeImports" } }
	local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
	for _, res in pairs(result or {}) do
		for _, r in pairs(res.result or {}) do
			if r.edit then
				vim.lsp.util.apply_workspace_edit(r.edit, "UTF-8")
			else
				vim.lsp.buf.execute_command(r.command)
			end
		end
	end
end

-- vim.cmd[[autocmd BufWritePre *.go lua OrgImports(500)]]


local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")


lspconfig.sumneko_lua.setup {
	on_attach = on_attach,
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
				-- Setup your lua path
				path = runtime_path,
			},
			completion = {
				keywordSnippet = "Disable",
			},
			diagnostics = {
				enable = true,
				-- Get the language server to recognize the `vim` global
				globals = { 'vim', "describe", "it", "before_each", "after_each" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics,
	{
		signs = true,
		update_in_insert = true,
	}
)
