return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	main = "nvim-treesitter.config",
	opts = {
		ensure_installed = {
			"lua",
			"vim",
			"vimdoc",
			"markdown",
			"markdown_inline",
			"regex",
			"html",
			"css",
			"javascript",
			"typescript",
			"json",
			"yaml",
			"bash",
			"latex",
			"norg",
			"python",
			"c_sharp",
			"hurl",
		},
		-- Faster parsing
		sync_install = false,
		auto_install = true,
		highlight = {
			enable = true,
			-- Disable for large files (performance) and special buffers
			disable = function(lang, buf)
				-- Disable for Telescope prompts
				if lang == "TelescopePrompt" then
					return true
				end
				local filetype = vim.bo[buf].filetype
				if filetype == "TelescopePrompt" then
					return true
				end
				-- Disable for large files
				local max_filesize = 100 * 1024 -- 100 KB
				local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
				if ok and stats and stats.size > max_filesize then
					return true
				end
			end,
			additional_vim_regex_highlighting = false,
		},
		indent = { enable = true },
		-- Incremental selection (expand/shrink selection)
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<C-space>",
				node_incremental = "<C-space>",
				scope_incremental = false,
				node_decremental = "<bs>",
			},
		},
	},
}
