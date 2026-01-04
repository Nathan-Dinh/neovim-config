return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000, -- load first
		config = function()
			-- Required
			vim.o.termguicolors = true
			vim.o.background = "dark" -- "dark" or "light"

			-- Optional Gruvbox settings
			vim.g.gruvbox_contrast_dark = "medium" -- soft | medium | hard
			vim.g.gruvbox_bold = true
			vim.g.gruvbox_italic = true
			vim.g.gruvbox_transparent_bg = false
			vim.g.gruvbox_underline = true
			vim.g.gruvbox_undercurl = true

			-- Apply colorscheme
			vim.cmd.colorscheme("gruvbox")
		end,
	},
}
