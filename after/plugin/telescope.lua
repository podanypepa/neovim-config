require('telescope').setup{ defaults = {
	file_ignore_patterns = {"node_modules", ".git"} }
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set("n", "<leader>ts", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set("n", "tR", function()
	builtin.lsp_references({layout_strategy='vertical'});
end)
vim.keymap.set("n", "<Leader><Leader>", function()
	builtin.find_files({
		follow = true,
		no_ignore = true,
		hidden = true,
		layout_strategy ='vertical',
		layout_config = {width=0.8}
	})
end)
vim.keymap.set("n", "<Leader>tg", function()
	builtin.grep_string({
		layout_strategy='vertical',
		layout_config={width=0.8}
	})
end)
vim.keymap.set("n", "<Leader>tg",function()
	builtin.grep_string({
		layout_strategy='vertical',
		layout_config={width=0.8}
	})
end)
vim.keymap.set("n", "<Leader>tb",function()
	builtin.buffers({
		layout_strategy='vertical',
		layout_config={width=0.8}
	})
end)
vim.keymap.set("n", "<Leader>td",function()
	builtin.diagnostics({
		layout_strategy='vertical',
		layout_config={width=0.8}
	})
end)
