return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000, -- load before other UI plugins
  config = function()
    vim.o.background = "dark" -- or "light"
    vim.cmd.colorscheme("gruvbox")
  end,
}

