-- Telescope remaping
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader><Tab>", builtin.buffers, {})
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
vim.keymap.set("n", "R", function()
	builtin.lsp_references({
		layout_strategy = "vertical",
		layout_config = { width = 0.8 },
	})
end)
vim.keymap.set("n", "<leader>td", function()
	builtin.diagnostics({
		layout_strategy = "vertical",
		layout_config = { width = 0.8 },
	})
end)
vim.keymap.set("n", "<Leader>tg", function()
	builtin.grep_string({
		layout_strategy = "vertical",
		layout_config = { width = 0.8 },
	})
end)
-- vim.keymap.set("n", "<Leader>fw", function()
-- 	builtin.live_grep({
-- 		layout_strategy = "vertical",
-- 		layout_config = { width = 0.8 },
-- 	})
-- end)
vim.cmd([[
nnoremap <leader>fw :execute 'Telescope live_grep  default_text=' . expand('<cword>')<cr>
]])
