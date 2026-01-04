return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		delay = 300,
		icons = {
			breadcrumb = "»",
			separator = "➜",
			group = "+",
		},
		win = {
			border = "rounded",
			padding = { 1, 2 },
		},
		layout = {
			spacing = 3,
		},
		spec = {
			-- Leader groups
			{ "<leader>c", group = "claude", icon = { icon = "", color = "purple" } },
			{ "<leader>f", group = "find", icon = { icon = "", color = "cyan" } },
			{ "<leader>g", group = "git", icon = { icon = "", color = "green" } },
			{ "<leader>h", group = "git hunk", icon = { icon = "", color = "orange" } },
			{ "<leader>l", group = "lazygit", icon = { icon = "", color = "green" } },
			{ "<leader>r", group = "refactor", icon = { icon = "", color = "blue" } },
			{ "<leader>t", group = "toggle", icon = { icon = "", color = "yellow" } },
			{ "<leader>x", group = "trouble", icon = { icon = "", color = "red" } },
			-- Navigation groups
			{ "[", group = "prev" },
			{ "]", group = "next" },
			{ "g", group = "goto" },
			{ "z", group = "fold" },
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer local keymaps",
		},
	},
}
