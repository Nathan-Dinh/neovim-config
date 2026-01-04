return {
  "kdheepak/lazygit.nvim",
  lazy = true,
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    { "<leader>lf", "<cmd>LazyGitCurrentFile<cr>", desc = "LazyGit current file" },
    { "<leader>lc", "<cmd>LazyGitFilter<cr>", desc = "LazyGit filter commits" },
  },
}
