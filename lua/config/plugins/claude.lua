return {
	"coder/claudecode.nvim",
	dependencies = { "folke/snacks.nvim" },
	opts = {
		terminal_cmd = "~/.local/bin/claude",
	},
	config = true,
	lazy = false,
	keys = {
		-- Normal mode
		{ "<leader>ct", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
		{ "<leader>cf", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
		{ "<leader>cr", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
		{ "<leader>cc", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
		{ "<leader>cm", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select Claude model" },
		{ "<leader>cb", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
		{
			"<leader>ca",
			"<cmd>ClaudeCodeTreeAdd<cr>",
			mode = { "n", "x" },
			desc = "Add file to Claude",
			ft = { "NvimTree", "neo-tree", "oil", "minifiles", "netrw" },
		},
		{ "<leader>cd", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
		{ "<leader>cA", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" }, -- uppercase to distinguish from 'add'
		{ "<leader>cS", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send selection to Claude" },
	},
}
