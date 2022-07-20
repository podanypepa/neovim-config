-- Setup nvim-cmp.
local cmp = require'cmp'

local t = function(str)
	return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col(".") - 1
    return col == 0 or vim.fn.getline("."):sub(col, col):match("%s") ~= nil
end

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
			-- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
			-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
			-- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
		end,
	},
	experimental = {
		native_menu = false,
		ghost_text = true,
	},
    mapping = {
		['<C-p>'] = cmp.mapping.select_prev_item(),
		['<Up>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<Down>'] = cmp.mapping.select_next_item(),
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.close(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if vim.fn.pumvisible() == 1 then 
				if vim.fn["UltiSnips#CanExpandSnippet"]() == 1 or 
					vim.fn["UltiSnips#CanJumpForwards"]() == 1 then 
					return vim.fn.feedkeys(t(
					"<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>"))
				end
				vim.fn.feedkeys(t("<C-n>"), "n")
			elseif check_back_space() then
                vim.fn.feedkeys(t("<tab>"), "n")
            else
                fallback()
            end
		end, {"i", "s"}),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if vim.fn.pumvisible() == 1 then
                vim.fn.feedkeys(t("<C-p>"), "n")
            else
                fallback()
            end
        end, {"i", "s"})
    },
    sources = cmp.config.sources({
		{ name= 'nvim_lsp_signature_help'},
		{ name = 'nvim_lsp' },
		{ name = 'nvim_lua' },
		{ name = 'path' },
		{ name = 'vsnip' }, -- For vsnip users.
		-- { name = 'luasnip' }, -- For luasnip users.
		-- { name = 'luasnip', option = { use_show_condition = false } },
		-- { name = 'ultisnips' }, -- For ultisnips users.
		-- { name = 'snippy' }, -- For snippy users.
    },{
		{ name = 'buffer' },
    }),
	completion = {completeopt = 'menu,menuone,noinsert'}
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig').tsserver.setup {
	capabilities = capabilities
}

