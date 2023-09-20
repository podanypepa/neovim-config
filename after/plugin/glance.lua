local glance = require("glance")
local actions = glance.actions

require("glance").setup({
	height = 18, -- Height of the window
	zindex = 45,
	border = {
		enable = false, -- Show window borders. Only horizontal borders allowed
		top_char = "―",
		bottom_char = "―",
	},
	preview_win_opts = { -- Configure preview window options
		cursorline = true,
		number = true,
		wrap = true,
	},
	list = {
		position = "right", -- Position of the list window 'left'|'right'
		width = 0.33, -- 33% width relative to the active window, min 0.1, max 0.5
	},
	theme = { -- This feature might not work properly in nvim-0.7.2
		enable = false, -- Will generate colors for the plugin based on your current colorscheme
		mode = "darken", -- 'brighten'|'darken'|'auto', 'auto' will set mode based on the brightness of your colorscheme
	},
	mappings = {
		list = {
			["j"] = actions.next, -- Bring the cursor to the next item in the list
			["k"] = actions.previous, -- Bring the cursor to the previous item in the list
			["<Down>"] = actions.next,
			["<Up>"] = actions.previous,
			["<Tab>"] = actions.next_location, -- Bring the cursor to the next location skipping groups in the list
			["<S-Tab>"] = actions.previous_location, -- Bring the cursor to the previous location skipping groups in the list
			["<C-u>"] = actions.preview_scroll_win(5),
			["<C-d>"] = actions.preview_scroll_win(-5),
			["v"] = actions.jump_vsplit,
			["s"] = actions.jump_split,
			["t"] = actions.jump_tab,
			["<CR>"] = actions.jump,
			["o"] = actions.jump,
			["<leader>l"] = actions.enter_win("preview"), -- Focus preview window
			["q"] = actions.close,
			["Q"] = actions.close,
			["<Esc>"] = actions.close,
		},
		preview = {
			["Q"] = actions.close,
			["<Tab>"] = actions.next_location,
			["<S-Tab>"] = actions.previous_location,
			["<leader>l"] = actions.enter_win("list"), -- Focus list window
		},
	},
	hooks = {
		-- before_open = function(results, open, jump, method)
		-- 	if #results == 1 then
		-- 		jump(results[1]) -- argument is optional
		-- 	else
		-- 		open(results) -- argument is optional
		-- 	end
		-- end,
	},
	folds = {
		fold_closed = "",
		fold_open = "",
		folded = true, -- Automatically fold list on startup
	},
	-- indent_lines = {
	-- 	enable = true,
	-- 	icon = '│',
	-- },
	winbar = {
		enable = false, -- Available strating from nvim-0.8+
	},
})
