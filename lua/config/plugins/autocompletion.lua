return {
	{
		"saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets" },
		version = "1.*",
		opts = {
			keymap = {
				preset = "default",
				["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
				["<C-e>"] = { "hide", "fallback" },
				["<CR>"] = { "accept", "fallback" },
				["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
				["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
				["<C-b>"] = { "scroll_documentation_up", "fallback" },
				["<C-f>"] = { "scroll_documentation_down", "fallback" },
				["<C-n>"] = { "select_next", "fallback" },
				["<C-p>"] = { "select_prev", "fallback" },
			},
			appearance = {
				nerd_font_variant = "mono",
			},
			signature = {
				enabled = true,
				window = { border = "rounded" },
			},
			completion = {
				accept = { auto_brackets = { enabled = true } },
				documentation = {
					auto_show = true,
					auto_show_delay_ms = 150,
					window = { border = "rounded" },
				},
				ghost_text = { enabled = true },
				list = {
					selection = { preselect = true, auto_insert = false },
					max_items = 15,
				},
				menu = {
					border = "rounded",
					draw = {
						treesitter = { "lsp" },
						columns = {
							{ "kind_icon" },
							{ "label", "label_description", gap = 1 },
							{ "source_name" },
						},
					},
				},
				trigger = {
					show_on_insert_on_trigger_character = true,
				},
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
				per_filetype = {
					lua = { "lsp", "path", "snippets", "buffer" },
				},
				providers = {
					lsp = { score_offset = 100 },
					path = { score_offset = 50 },
					snippets = { score_offset = 30 },
					buffer = {
						score_offset = 10,
						min_keyword_length = 3,
					},
				},
			},
			cmdline = {
				enabled = true,
				keymap = { preset = "cmdline" },
				completion = { menu = { auto_show = true } },
			},
		},
	},
}
