return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				-- Performance: use native fzf
				sorting_strategy = "ascending",
				layout_config = {
					horizontal = { prompt_position = "top" },
				},
				-- Ignore heavy directories
				file_ignore_patterns = {
					"node_modules",
					".git/",
					"bin/",
					"obj/",
					"target/",
					"%.lock",
					"__pycache__",
					"%.pyc",
				},
				-- Faster previewer
				preview = {
					filesize_limit = 0.5, -- MB
					timeout = 250,
				},
				mappings = {
					i = {
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
						["<Esc>"] = actions.close,
					},
				},
			},
			pickers = {
				find_files = {
					-- Use fd if available (faster than find)
					find_command = vim.fn.executable("fd") == 1
						and { "fd", "--type", "f", "--strip-cwd-prefix", "--hidden", "--exclude", ".git" }
						or nil,
				},
				live_grep = {
					-- Use rg args for speed
					additional_args = { "--hidden", "--glob", "!.git/*" },
				},
			},
		})

		telescope.load_extension("fzf")
	end,
	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Find files",
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Live grep",
		},
		{
			"<leader>fh",
			function()
				require("telescope.builtin").help_tags()
			end,
			desc = "Help tags",
		},
		{
			"<leader>fb",
			function()
				require("telescope.builtin").buffers()
			end,
			desc = "Buffers",
		},
		{
			"<leader>fc",
			function()
				require("telescope.builtin").find_files({
					cwd = vim.fn.stdpath("config"),
				})
			end,
			desc = "Configs",
		},
		{
			"<leader>fw",
			function()
				require("telescope.builtin").grep_string()
			end,
			desc = "Find word under cursor",
		},
		{
			"<leader>fd",
			function()
				require("telescope.builtin").diagnostics()
			end,
			desc = "Diagnostics",
		},
		{
			"<leader>fr",
			function()
				require("telescope.builtin").oldfiles()
			end,
			desc = "Recent files",
		},
		{
			"<leader>fs",
			function()
				require("telescope.builtin").lsp_document_symbols()
			end,
			desc = "Document symbols",
		},
		{
			"<leader>fS",
			function()
				require("telescope.builtin").lsp_workspace_symbols()
			end,
			desc = "Workspace symbols",
		},
		{
			"<leader>fk",
			function()
				require("telescope.builtin").keymaps()
			end,
			desc = "Keymaps",
		},
	},
}
