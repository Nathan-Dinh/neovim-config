return {
  "mfussenegger/nvim-lint",
  event = {
    "BufReadPre",
    "BufNewFile",
  },
  config = function()
    local lint = require("lint")
    lint.linters_by_ft = {
      -- JavaScript/TypeScript
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      -- Python
      python = { "pylint" },
      -- Shell
      sh = { "shellcheck" },
      bash = { "shellcheck" },
    }

    local lint_group = vim.api.nvim_create_augroup("lint", { clear = true })
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_group,
      callback = function()
        lint.try_lint()
      end,
    })

    -- Manual lint keymap
    vim.keymap.set("n", "<leader>tl", function()
      lint.try_lint()
    end, { desc = "Trigger linting" })
  end,
}
