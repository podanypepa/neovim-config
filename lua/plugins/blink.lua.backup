return {
	{
		"saghen/blink.cmp",
		lazy = false, -- lazy loading handled internally
		enabled = false,
		-- optional: provides snippets for the snippet source
		dependencies = "rafamadriz/friendly-snippets",

		-- use a release tag to download pre-built binaries
		version = "v0.*",
		-- OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
		-- build = 'cargo build --release',
		-- If you use nix, you can build from source using latest nightly rust with:
		-- build = 'nix run .#build-plugin',

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = {
			-- 'default' for mappings similar to built-in completion
			-- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
			-- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
			-- see the "default configuration" section below for full documentation on how to define
			-- your own keymap.
			documentation = {
				auto_show = true,
				treesitter_highlighting = true,
				window = {
					min_width = 10,
					max_width = 60,
					max_height = 20,
					border = "single",
					winblend = 0,
					winhighlight =
					"Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:BlinkCmpDocCursorLine,Search:None",
					scrollbar = true,
					direction_priority = {
						menu_north = { "e", "w", "n", "s" },
						menu_south = { "e", "w", "s", "n" },
					},
				},
			},
			keymap = { preset = "enter" },


			menu = {
				enabled = true,
				min_width = 15,
				max_height = 10,
				border = "rounded",
				winblend = 0,
				winhighlight =
				"Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
				-- Keep the cursor X lines away from the top/bottom of the window
				scrolloff = 2,
				-- Note that the gutter will be disabled when border ~= 'none'
				scrollbar = true,
				-- Which directions to show the window,
				-- falling back to the next direction when there's not enough space
				direction_priority = { "s", "n" },

				-- Whether to automatically show the window when new completion items are available
				auto_show = true,

				-- Screen coordinates of the command line
				cmdline_position = function()
					if vim.g.ui_cmdline_pos ~= nil then
						local pos = vim.g.ui_cmdline_pos -- (1, 0)-indexed
						return { pos[1] - 1, pos[2] }
					end
					local height = (vim.o.cmdheight == 0) and 1 or vim.o.cmdheight
					return { vim.o.lines - height, 0 }
				end,

				-- Controls how the completion items are rendered on the popup window
				draw = {
					-- Aligns the keyword you've typed to a component in the menu
					align_to_component = "label", -- or 'none' to disable
					-- Left and right padding, optionally { left, right } for different padding on each side
					padding = 1,
					-- Gap between columns
					gap = 1,
					-- Use treesitter to highlight the label text of completions from these sources
					treesitter = { "lsp" },
					-- Recommended to enable it just for the LSP source
					-- treesitter = { 'lsp' }

					-- Components to render, grouped by column
					-- columns = { { "label", "label_description", gap = 1 } },
					columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },
					-- for a setup similar to nvim-cmp: https://github.com/Saghen/blink.cmp/pull/245#issuecomment-2463659508
					-- columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },

					-- Definitions for possible components to render. Each component defines:
					--   ellipsis: whether to add an ellipsis when truncating the text
					--   width: control the min, max and fill behavior of the component
					--   text function: will be called for each item
					--   highlight function: will be called only when the line appears on screen
					components = {
						kind_icon = {
							ellipsis = false,
							text = function(ctx)
								return ctx.kind_icon .. ctx.icon_gap
							end,
							highlight = function(ctx)
								return require("blink.cmp.completion.windows.render.tailwind").get_hl(ctx)
									or "BlinkCmpKind" .. ctx.kind
							end,
						},

						kind = {
							ellipsis = false,
							width = { fill = true },
							text = function(ctx)
								return ctx.kind
							end,
							highlight = function(ctx)
								return require("blink.cmp.completion.windows.render.tailwind").get_hl(ctx)
									or "BlinkCmpKind" .. ctx.kind
							end,
						},

						label = {
							width = { fill = true, max = 60 },
							text = function(ctx)
								return ctx.label .. ctx.label_detail
							end,
							highlight = function(ctx)
								-- label and label details
								local highlights = {
									{
										0,
										#ctx.label,
										group = ctx.deprecated and "BlinkCmpLabelDeprecated" or "BlinkCmpLabel",
									},
								}
								if ctx.label_detail then
									table.insert(
										highlights,
										{ #ctx.label, #ctx.label + #ctx.label_detail, group = "BlinkCmpLabelDetail" }
									)
								end

								-- characters matched on the label by the fuzzy matcher
								for _, idx in ipairs(ctx.label_matched_indices) do
									table.insert(highlights, { idx, idx + 1, group = "BlinkCmpLabelMatch" })
								end

								return highlights
							end,
						},

						label_description = {
							width = { max = 30 },
							text = function(ctx)
								return ctx.label_description
							end,
							highlight = "BlinkCmpLabelDescription",
						},

						source_name = {
							width = { max = 30 },
							text = function(ctx)
								return ctx.source_name
							end,
							highlight = "BlinkCmpSource",
						},
					},
				},
			},

			appearance = {
				-- Sets the fallback highlight groups to nvim-cmp's highlight groups
				-- Useful for when your theme doesn't support blink.cmp
				-- will be removed in a future release
				use_nvim_cmp_as_default = true,
				-- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
				-- Adjusts spacing to ensure icons are aligned
				-- nerd_font_variant = "mono",
			},

			-- default list of enabled providers defined so that you can extend it
			-- elsewhere in your config, without redefining it, via `opts_extend`
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
				-- optionally disable cmdline completions
				-- cmdline = {},
			},

			-- experimental signature help support
			signature = {
				enabled = true,
				trigger = {
					blocked_trigger_characters = {},
					blocked_retrigger_characters = {},
					-- When true, will show the signature help window when the cursor comes after a trigger character when entering insert mode
					show_on_insert_on_trigger_character = true,
				},
				window = {
					min_width = 1,
					max_width = 100,
					max_height = 10,
					border = "rounded",
					winblend = 0,
					winhighlight = "Normal:BlinkCmpSignatureHelp,FloatBorder:BlinkCmpSignatureHelpBorder",
					scrollbar = false, -- Note that the gutter will be disabled when border ~= 'none'
					-- Which directions to show the window,
					-- falling back to the next direction when there's not enough space,
					-- or another window is in the way
					direction_priority = { "n", "s" },
					-- Disable if you run into performance issues
					treesitter_highlighting = true,
				},
			},
		},
		-- allows extending the providers array elsewhere in your config
		-- without having to redefine it
		opts_extend = { "sources.default" },
	},
}
