return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
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
		})
	end,
}
