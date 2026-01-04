return {
	{
		"stevearc/oil.nvim",
		opts = {
			default_file_explorer = true,
			columns = { "icon" },
			buf_options = {
				buflisted = false,
				bufhidden = "hide",
			},
			win_options = {
				wrap = false,
				signcolumn = "no",
				cursorcolumn = false,
				foldcolumn = "0",
				spell = false,
				list = false,
				conceallevel = 3,
				concealcursor = "nvic",
			},
			delete_to_trash = false,
			skip_confirm_for_simple_edits = false,
			prompt_save_on_select_new_entry = true,
			cleanup_delay_ms = 2000,
			lsp_file_methods = {
				enabled = true,
				timeout_ms = 1000,
				autosave_changes = false,
			},
			constrain_cursor = "editable",
			watch_for_changes = false,
			keymaps = {
				["g?"] = { "actions.show_help", mode = "n", desc = "Show help" },
				["<CR>"] = { "actions.select", desc = "Select entry" },
				["<C-s>"] = { "actions.select", opts = { vertical = true }, desc = "Open in vertical split" },
				["<C-h>"] = { "actions.select", opts = { horizontal = true }, desc = "Open in horizontal split" },
				["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open in new tab" },
				["<C-p>"] = { "actions.preview", desc = "Preview file" },
				["<C-c>"] = { "actions.close", mode = "n", desc = "Close oil" },
				["<C-l>"] = { "actions.refresh", desc = "Refresh" },
				["-"] = { "actions.parent", mode = "n", desc = "Go to parent directory" },
				["_"] = { "actions.open_cwd", mode = "n", desc = "Open cwd" },
				["`"] = { "actions.cd", mode = "n", desc = "Change directory" },
				["g~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n", desc = "Change tab directory" },
				["gs"] = { "actions.change_sort", mode = "n", desc = "Change sort" },
				["gx"] = { "actions.open_external", desc = "Open external" },
				["g."] = { "actions.toggle_hidden", mode = "n", desc = "Toggle hidden files" },
				["g\\"] = { "actions.toggle_trash", mode = "n", desc = "Toggle trash" },
			},
			use_default_keymaps = true,
			view_options = {
				show_hidden = false,
				is_hidden_file = function(name, bufnr)
					return name:match("^%.") ~= nil
				end,
				is_always_hidden = function(name, bufnr)
					return false
				end,
				natural_order = "fast",
				case_insensitive = false,
				sort = { { "type", "asc" }, { "name", "asc" } },
				highlight_filename = function(entry, is_hidden, is_link_target, is_link_orphan)
					return nil
				end,
			},
			extra_scp_args = {},
			extra_s3_args = {},
			git = {
				add = function(path)
					return true
				end,
				mv = function(src, dest)
					return true
				end,
				rm = function(path)
					return true
				end,
			},
			float = {
				padding = 2,
				max_width = 0,
				max_height = 0,
				border = nil,
				win_options = { winblend = 0 },
				get_win_title = nil,
				preview_split = "auto",
				override = function(conf)
					return conf
				end,
			},
			preview_win = {
				update_on_cursor_moved = true,
				preview_method = "fast_scratch",
				disable_preview = function(filename)
					return false
				end,
				win_options = {},
			},
			confirmation = {
				max_width = 0.9,
				min_width = { 40, 0.4 },
				width = nil,
				max_height = 0.9,
				min_height = { 5, 0.1 },
				height = nil,
				border = nil,
				win_options = { winblend = 0 },
			},
			progress = {
				max_width = 0.9,
				min_width = { 40, 0.4 },
				width = nil,
				max_height = { 10, 0.9 },
				min_height = { 5, 0.1 },
				height = nil,
				border = nil,
				minimized_border = "none",
				win_options = { winblend = 0 },
			},
			ssh = { border = nil },
			keymaps_help = { border = nil },
		},
		config = function(_, opts)
			require("oil").setup(opts)
		end,
		cmd = { "Oil", "OilOpen" },
		keys = {
			{ "-", "<cmd>Oil<CR>", desc = "Open parent directory" },
		},
	},
}
