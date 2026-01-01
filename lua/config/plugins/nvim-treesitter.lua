return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',

  opts = {
    ensure_installed = {
      'lua',
      'vim',
      'vimdoc',
      'markdown',
      'markdown_inline',
      'regex',
      'html',
      'css',
      'javascript',
      'typescript',
      'json',
      'yaml',
      'bash',
      'latex',
      'norg',
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true,
    },
  },
}

