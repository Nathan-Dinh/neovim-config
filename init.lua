vim.g.python3_host_prog = "/home/nathandinh/.pyenv/versions/3.13.11/bin/python"

-- Filetype detection for Hurl
vim.filetype.add({
  extension = {
    hurl = "hurl",
  },
})

-- Ensure hurl filetype and treesitter highlighting when navigating to files (Telescope, oil, etc.)
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  pattern = "*.hurl",
  callback = function(args)
    if vim.bo[args.buf].filetype ~= "hurl" then
      vim.bo[args.buf].filetype = "hurl"
    end
    -- Force treesitter to attach/start highlighting
    vim.schedule(function()
      if vim.api.nvim_buf_is_valid(args.buf) then
        pcall(vim.treesitter.start, args.buf, "hurl")
      end
    end)
  end,
})

require("core.options")
require("core.keymaps")
require("config.lazy")

-- Prevent Treesitter errors on TelescopePrompt buffers
-- NOTE: Must be AFTER lazy.nvim loads plugins so treesitter is fully initialized
local original_get_parser = vim.treesitter.get_parser
vim.treesitter.get_parser = function(bufnr, lang, opts)
  local buf = bufnr or vim.api.nvim_get_current_buf()
  local ft = vim.bo[buf].filetype
  if ft == "TelescopePrompt" or lang == "TelescopePrompt" then
    return nil
  end
  return original_get_parser(bufnr, lang, opts)
end
