return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = { "mason-org/mason.nvim" },
  config = function()
    require("mason-tool-installer").setup({
      ensure_installed = {
        -- Formatters
        "stylua", -- Lua
        "black", -- Python
        "isort", -- Python imports
        "prettierd", -- JS/TS/Web
        "rustfmt", -- Rust
        "gofumpt", -- Go
        "goimports", -- Go imports
        "shfmt", -- Shell

        -- Linters
        "eslint_d", -- JS/TS
        "pylint", -- Python
        "shellcheck", -- Shell
      },
      auto_update = false,
      run_on_start = true,
    })
  end,
}
