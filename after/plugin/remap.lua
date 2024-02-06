vim.g.mapleader = " "
vim.keymap.set("v", "K", ":m  '>-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m  '>+1<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("n", "<Tab>", ":bn<CR>")
vim.keymap.set("n", "<S-Tab>", ":bp<CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR>")
vim.keymap.set("n", "[e", "<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR})<CR>")
vim.keymap.set("n", "]e", "<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR})<CR>")
vim.keymap.set("n", "<Leader>bd", ":Bdelete<CR>")
vim.keymap.set("n", "<silent><C-]>", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("n", "<leader>ex", ":25Lexplore %:p:h<CR>")
vim.keymap.set("n", "F", ":Format<CR>")
-- vim.keymap.set("n", "<C-e>", ":Neotree toggle<CR>")
vim.keymap.set("n", "<C-e>", ":Explore<CR>")
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>td", ":Trouble workspace_diagnostics<CR>")
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "gx", "<esc>:URLOpenUnderCursor<cr>")
vim.keymap.set("v", "p", '"_dP')
vim.keymap.set("n", "<leader>h", "<cmd>cnext<CR>zz", { desc = "Forward qfixlist" })
vim.keymap.set("n", "<leader>;", "<cmd>cprev<CR>zz", { desc = "Backward qfixlist" })
vim.keymap.set("n", "<leader>q", "<cmd>Bdelete<CR>", { desc = "Close Buffer" })
vim.keymap.set("n", "<leader>cp", '<cmd>let @+ = expand("%:p")<CR>', { desc = "Copy File Path" })

-- vim.keymap.set("n", "R", "<CMD>Glance references<CR>")
vim.keymap.set("n", "gR", function()
	require("trouble").open("lsp_references")
end)
-- vim.keymap.set("n", "gR", "<CMD>Glance references<CR>")
vim.keymap.set("n", "R", function()
	require("trouble").open("lsp_references")
end)

-- Telescope remaping
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>ts", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<Leader><Leader>", function()
	builtin.find_files({
		layout_strategy = "vertical",
		layout_config = { width = 0.8 },
	})
end)
vim.keymap.set("n", "<Leader>tR", function()
	builtin.lsp_references({
		layout_strategy = "vertical",
	})
end)
vim.keymap.set("n", "<Leader>tg", function()
	builtin.grep_string({
		layout_strategy = "vertical",
		layout_config = { width = 0.8 },
	})
end)
vim.cmd([[
nnoremap <leader>fw :execute 'Telescope live_grep  default_text=' . expand('<cword>')<cr>
]])

-- vim.cmd([[
-- let g:netrw_active = 1
-- function! Togglenetrw()
--     if g:netrw_active
--         Explore
--         let g:netrw_active = 0
--     else
--         " This is the name of the buffer
--         " bd NetrwTreeListing
-- 		bd
--         let g:netrw_active = 1
--     endif
--     return 1
-- endfunction
-- nnoremap <silent> <C-f> :call Togglenetrw()<CR>
-- ]])
