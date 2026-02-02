return {
	"folke/noice.nvim",
	lazy = false,
	opts = {
		cmdline = {
			enabled = true,
			view = "cmdline_popup",
		},
		popupmenu = {
			enabled = true,
			backend = "nui",
		},
		lsp = {
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
			},
		},
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
}
