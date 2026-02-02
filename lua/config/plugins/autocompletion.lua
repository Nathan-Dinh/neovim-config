return {
	{
		"saghen/blink.cmp",
		lazy = false,
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
					-- Faster doc popup (was 150ms)
					auto_show_delay_ms = 50,
					window = { border = "rounded" },
				},
				ghost_text = { enabled = true },
				list = {
					selection = { preselect = true, auto_insert = false },
					-- Reduced from 15 for faster rendering
					max_items = 10,
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
			-- Fuzzy matching improvements
			fuzzy = {
				-- Use frecency for smarter sorting (learns your patterns)
				frecency = { enabled = true },
				-- Typo tolerance
				max_typos = 1,
			},
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
				per_filetype = {
					lua = { "lsp", "path", "snippets", "buffer" },
					-- C# specific: prioritize LSP heavily
					cs = { "lsp", "snippets", "path" },
				},
				providers = {
					lsp = {
						score_offset = 100,
						-- Timeout for slow LSPs (like OmniSharp)
						timeout_ms = 2000,
						-- Async for better responsiveness
						async = true,
					},
					path = { score_offset = 50 },
					snippets = { score_offset = 30 },
					buffer = {
						score_offset = 10,
						min_keyword_length = 3,
						-- Don't index huge files
						max_items = 5,
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
