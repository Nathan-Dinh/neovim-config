return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		size = function(term)
			if term.direction == "horizontal" then
				return 15
			elseif term.direction == "vertical" then
				return vim.o.columns * 0.4
			end
		end,
		open_mapping = [[<C-\>]],
		direction = "horizontal",
		close_on_exit = true,
		shell = vim.o.shell,
		persist_mode = true,
		persist_size = true,
	},
	keys = {
		{ "<C-\\>", "<cmd>ToggleTerm<cr>", mode = { "n", "t" }, desc = "Toggle terminal" },
		{
			"<leader>t1",
			"<cmd>1ToggleTerm direction=horizontal<cr>",
			desc = "Terminal 1",
		},
		{
			"<leader>t2",
			"<cmd>2ToggleTerm direction=horizontal<cr>",
			desc = "Terminal 2",
		},
		{
			"<leader>t3",
			"<cmd>3ToggleTerm direction=horizontal<cr>",
			desc = "Terminal 3",
		},
		{
			"<leader>tf",
			"<cmd>ToggleTerm direction=float<cr>",
			desc = "Terminal float",
		},
		{
			"<leader>ta",
			"<cmd>ToggleTermToggleAll<cr>",
			desc = "Toggle all terminals",
		},
	},
}
