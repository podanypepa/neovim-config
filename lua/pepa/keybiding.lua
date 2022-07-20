local function map(mode, lhs, rhs, opts)
	local options = {noremap = true, silent = true }
	if opts then options = vim.tbl_extend('force', options, opts) end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<Tab>", ":bn<CR>")
map("n", "<S-Tab>", ":bp<CR>")

map("n", "<Leader>ff", ":Files<CR>")
map("n", "<Leader>fg", ":GitFiles<CR>")
map("n", "<Leader>fa", ":Ag<CR>")
map("n", "<Leader>fr", ":Rg<CR>")
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-E>", ":NvimTreeToggle<CR>")
map("n", "<Leader>dd", ":Bde<CR>")

map("n", "R", ":lua require('telescope.builtin').lsp_references({layout_strategy='vertical'})<CR>" )
map("n", "<Leader><Leader>", ":lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.8}})<CR>"
)
map("n", "<Leader>tf", ":lua require('telescope.builtin').find_files({layout_strategy='vertical',layout_config={width=0.8}})<CR>"
)
map("n", "<Leader>tg", ":lua require('telescope.builtin').grep_string({layout_strategy='vertical',layout_config={width=0.8}})<CR>"
)
map("n", "<Leader>tr", ":lua require('telescope.builtin').live_grep({layout_strategy='vertical',layout_config={width=0.8}})<CR>"
)
map("n", "<Leader>tb", ":lua require('telescope.builtin').buffers({layout_strategy='vertical',layout_config={width=0.8}})<CR>"
)
map("n", "<Leader>td", ":lua require('telescope.builtin').diagnostics({layout_strategy='vertical',layout_config={width=0.8}})<CR>"
)

map("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
map("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>")
map("n", "[e", "<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR})<CR>" )
map("n", "]e", "<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR})<CR>" )


map("n", "<silent><C-]>", "<cmd>lua vim.lsp.buf.definition()<CR>")

map("t", "<Esc><Esc>", "<C-\\><C-n>")

vim.cmd[[
nnoremap <silent>gd :vsp<cr><cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent>D     <cmd>lua vim.lsp.buf.definition()<CR>
" nnoremap <silent>K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <esc> :noh<return><esc>
]]


-- Lua
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", {silent = true, noremap = true})

-- LSP config mappings
local options = { noremap = true }
-- vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', options)
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', options)
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', options)
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', options)
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>lsh', '<cmd>lua vim.lsp.buf.signature_help()<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>dn', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', options)
vim.api.nvim_set_keymap('n', '<leader>dp', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', options)

