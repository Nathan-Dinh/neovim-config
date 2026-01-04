return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        -- Lua
        lua = { "stylua" },
        -- Python
        python = { "isort", "black" },
        -- Rust
        rust = { "rustfmt", lsp_format = "fallback" },
        -- JavaScript/TypeScript
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
        javascriptreact = { "prettierd", "prettier", stop_after_first = true },
        typescriptreact = { "prettierd", "prettier", stop_after_first = true },
        -- Vue
        vue = { "prettierd", "prettier", stop_after_first = true },
        -- Web
        html = { "prettierd", "prettier", stop_after_first = true },
        css = { "prettierd", "prettier", stop_after_first = true },
        scss = { "prettierd", "prettier", stop_after_first = true },
        -- Data formats
        json = { "prettierd", "prettier", stop_after_first = true },
        yaml = { "prettierd", "prettier", stop_after_first = true },
        markdown = { "prettierd", "prettier", stop_after_first = true },
        -- Go
        go = { "gofmt", "goimports" },
        -- Shell
        sh = { "shfmt" },
        bash = { "shfmt" },
      },
      format_on_save = function(bufnr)
        if vim.g.disable_autoformat then
          return
        end
        return {
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        }
      end,
    })

    -- Toggle format on save
    vim.g.disable_autoformat = false
    vim.keymap.set("n", "<leader>tf", function()
      vim.g.disable_autoformat = not vim.g.disable_autoformat
      print("Format on save: " .. (vim.g.disable_autoformat and "disabled" or "enabled"))
    end, { desc = "Toggle format on save" })

    -- Manual format
    vim.keymap.set({ "n", "v" }, "<leader>l", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = "Format buffer" })
  end,
}
