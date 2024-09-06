vim.g.mapleader = " "
vim.keymap.set("v", "K", ":m  '>-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m  '>+1<CR>gv=gv")
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
vim.keymap.set("n", "<Leader>bd", ":bdelete<CR>")
vim.keymap.set("n", "<silent><C-]>", "<cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("n", "<leader>ex", ":25Lexplore %:p:h<CR>")
vim.keymap.set("n", "F", ":Format<CR>")
vim.keymap.set("n", "<C-e>", ":Explore<CR>")
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("v", "p", '"_dP')
vim.keymap.set("n", "<leader>h", "<cmd>cnext<CR>zz", { desc = "Forward qfixlist" })
vim.keymap.set("n", "<leader>;", "<cmd>cprev<CR>zz", { desc = "Backward qfixlist" })
vim.keymap.set("n", "<leader>q", "<cmd>:bdelete<CR>", { desc = "Close Buffer" })
vim.keymap.set("n", "<leader>cp", '<cmd>let @+ = expand("%:p")<CR>', { desc = "Copy File Path" })

vim.keymap.set("n", "gt", function()
	vim.lsp.buf.type_definition()
end, {})

-- TmuxNavigator
-- vim.keymap.set("n", "<c-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "TmuxNavigateLeft" })
-- vim.keymap.set("n", "<c-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "TmuxNavigateDown" })
-- vim.keymap.set("n", "<c-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "TmuxNavigateDown" })
-- vim.keymap.set("n", "<c-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "TmuxNavigateDown" })

vim.api.nvim_set_keymap(
	"n",
	"<leader>do",
	"<cmd>lua vim.diagnostic.open_float()<CR>",
	{ noremap = true, silent = true }
)

vim.keymap.set("n", "<leader>la", ":copen<CR>:AsyncRun make lintall<CR>", { desc = "make lintall" })
vim.keymap.set("n", "<leader>lr", ":copen<CR>:AsyncRun revive ./...<CR>", { desc = "make lintall" })
vim.keymap.set("n", "<leader>ll", ":copen<CR>:AsyncRun golangci-lint  run ./...<CR>", { desc = "make lintall" })

vim.keymap.set("n", "<leader>ne", ":Neogit<CR>", { desc = "make lintall" })

vim.keymap.set("n", "<leader>nf", ":Neotree filesystem reveal right<CR>", { desc = "Neotree" })
vim.keymap.set("n", "<leader>nt", ":Neotree toggle<CR>", { desc = "Neotree" })
vim.keymap.set("n", "<C-p>", ":Neotree toggle<CR>", { desc = "Neotree" })

vim.keymap.set("n", "n", "nzzzv", {})
vim.keymap.set("n", "N", "Nzzzv", {})
