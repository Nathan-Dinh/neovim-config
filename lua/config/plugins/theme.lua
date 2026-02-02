return {
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				contrast = "medium",
				bold = true,
				italic = {
					strings = true,
					comments = true,
					operators = false,
					folds = true,
				},
				transparent_mode = false,
				underline = true,
				undercurl = true,
			})
			vim.o.background = "dark"
			vim.cmd.colorscheme("gruvbox")
		end,
	},
}
