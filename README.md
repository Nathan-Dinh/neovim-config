# Neovim Configuration

A modern Neovim 0.11+ configuration with lazy-loading, LSP support, and AI-assisted coding.

## Requirements

- **Neovim 0.11+**
- Git
- A [Nerd Font](https://www.nerdfonts.com/) for icons
- `ripgrep` for live grep
- `fd` for file finding (optional)
- Language-specific requirements (Node.js, Python, Rust, Go, etc.)

## Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lua/
│   ├── core/
│   │   ├── options.lua      # Vim options
│   │   └── keymaps.lua      # Core keybindings
│   └── config/
│       ├── lazy.lua         # Plugin manager setup
│       └── plugins/         # Plugin configurations
```

## Plugin Overview

| Category | Plugin | Description |
|----------|--------|-------------|
| **Plugin Manager** | lazy.nvim | Fast plugin manager with lazy-loading |
| **Theme** | gruvbox.nvim | Retro groove colorscheme |
| **UI** | snacks.nvim | Dashboard, explorer, terminal, notifications |
| **UI** | noice.nvim | Enhanced UI for messages, cmdline, popupmenu |
| **UI** | lualine.nvim | Statusline |
| **UI** | which-key.nvim | Keybinding hints |
| **LSP** | mason.nvim | LSP/DAP/Linter installer |
| **LSP** | mason-lspconfig.nvim | Mason + LSP integration |
| **LSP** | nvim-lspconfig | LSP configurations |
| **Completion** | blink.cmp | Fast autocompletion |
| **Syntax** | nvim-treesitter | Syntax highlighting & code understanding |
| **Formatting** | conform.nvim | Code formatter |
| **Linting** | nvim-lint | Async linting |
| **Git** | gitsigns.nvim | Git signs in gutter + hunk actions |
| **Navigation** | telescope.nvim | Fuzzy finder |
| **Navigation** | oil.nvim | File explorer as buffer |
| **Debugging** | nvim-dap | Debug adapter protocol |
| **Editing** | nvim-surround | Surround text objects |
| **Editing** | nvim-autopairs | Auto-close brackets |
| **Editing** | Comment.nvim | Toggle comments |
| **Diagnostics** | trouble.nvim | Pretty diagnostics list |
| **AI** | claudecode.nvim | Claude AI integration |

## Keybindings

Leader key: `<Space>`

### General

| Key | Action |
|-----|--------|
| `<leader>w` | Save file |
| `<leader>q` | Quit |
| `<C-s>` | Save file (any mode) |
| `<Esc>` | Clear search highlight |

### Navigation

| Key | Action |
|-----|--------|
| `<C-h/j/k/l>` | Move between windows |
| `<S-h>` | Previous buffer |
| `<S-l>` | Next buffer |
| `<leader>bd` | Delete buffer (keep window) |
| `-` | Open Oil file explorer |
| `<leader>E` | Toggle file tree sidebar |

### Finding (Telescope)

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Find buffers |
| `<leader>fh` | Help tags |
| `<leader>fc` | Find in config |
| `<leader>fw` | Find word under cursor |
| `<leader>fd` | Find diagnostics |
| `<leader>fr` | Recent files |
| `<leader>fs` | Document symbols |
| `<leader>fS` | Workspace symbols |
| `<leader>fk` | Search keymaps |

### LSP

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Find references |
| `gi` | Go to implementation |
| `gt` | Go to type definition |
| `K` | Hover documentation |
| `<C-s>` (insert) | Signature help |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `[d` / `]d` | Previous/next diagnostic |
| `<leader>e` | Show diagnostic float |
| `<leader>th` | Toggle inlay hints |

### Git (Gitsigns)

| Key | Action |
|-----|--------|
| `]c` / `[c` | Next/previous hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage buffer |
| `<leader>hR` | Reset buffer |
| `<leader>hp` | Preview hunk |
| `<leader>hi` | Preview hunk inline |
| `<leader>hb` | Blame line |
| `<leader>hd` | Diff this |
| `<leader>tb` | Toggle line blame |
| `<leader>tw` | Toggle word diff |
| `ih` | Select hunk (text object) |

### Git (Lazygit)

| Key | Action |
|-----|--------|
| `<leader>lg` | Open Lazygit |
| `<leader>lf` | Lazygit current file |
| `<leader>ll` | Lazygit log |

### Terminal

| Key | Action |
|-----|--------|
| `<C-\>` | Toggle terminal |
| `<leader>tt` | Toggle terminal |
| `<Esc>` (terminal) | Exit terminal mode |
| `<C-h/j/k/l>` (terminal) | Window navigation |

### Debugging (DAP)

| Key | Action |
|-----|--------|
| `<leader>db` | Toggle breakpoint |
| `<leader>dB` | Conditional breakpoint |
| `<leader>dc` | Continue |
| `<leader>do` | Step over |
| `<leader>di` | Step into |
| `<leader>dO` | Step out |
| `<leader>dr` | Toggle REPL |
| `<leader>dl` | Run last |
| `<leader>du` | Toggle DAP UI |
| `<leader>dt` | Terminate |

### Formatting

| Key | Action |
|-----|--------|
| `<leader>l` | Format buffer |
| `<leader>tf` | Toggle format on save |

### Diagnostics (Trouble)

| Key | Action |
|-----|--------|
| `<leader>xx` | Toggle diagnostics |
| `<leader>xX` | Buffer diagnostics |
| `<leader>cs` | Symbols |
| `<leader>cl` | LSP definitions/references |
| `<leader>xL` | Location list |
| `<leader>xQ` | Quickfix list |

### Claude AI

| Key | Action |
|-----|--------|
| `<leader>ct` | Toggle Claude |
| `<leader>cf` | Focus Claude |
| `<leader>cr` | Resume Claude |
| `<leader>cc` | Continue Claude |
| `<leader>cb` | Add current buffer to Claude |
| `<leader>cS` | Send selection to Claude (visual) |

### Editing

| Key | Action |
|-----|--------|
| `<` / `>` (visual) | Indent and reselect |
| `<A-j>` / `<A-k>` | Move line(s) up/down |
| `gc` | Toggle comment (motion) |
| `gcc` | Toggle comment (line) |
| `ys{motion}{char}` | Add surround |
| `ds{char}` | Delete surround |
| `cs{old}{new}` | Change surround |

### Folding

| Key | Action |
|-----|--------|
| `za` | Toggle fold |
| `zo` / `zc` | Open/close fold |
| `zR` / `zM` | Open/close all folds |

## LSP Servers

Automatically installed via Mason:

- **Lua**: lua_ls
- **Python**: pyright
- **TypeScript/JavaScript**: ts_ls
- **Vue**: vue_ls
- **HTML**: html
- **CSS**: cssls
- **JSON**: jsonls (with SchemaStore)
- **YAML**: yamlls (with SchemaStore)
- **Bash**: bashls
- **Rust**: rust_analyzer
- **Go**: gopls
- **C/C++**: clangd

## Formatters

Configured via conform.nvim:

| Language | Formatter |
|----------|-----------|
| Lua | stylua |
| Python | isort, black |
| Rust | rustfmt |
| JS/TS/Vue | prettierd, prettier |
| HTML/CSS | prettierd, prettier |
| JSON/YAML/Markdown | prettierd, prettier |
| Go | gofmt, goimports |
| Shell | shfmt |

## Linters

Configured via nvim-lint:

| Language | Linter |
|----------|--------|
| JS/TS | eslint_d |
| Python | pylint |
| Shell | shellcheck |

## Debug Adapters

Configured via nvim-dap:

- **Python**: debugpy
- **Go**: delve
- **JS/TS**: js-debug-adapter (pwa-node)
- **Rust/C/C++**: codelldb

## Options Highlights

- Relative line numbers enabled
- 2-space indentation
- System clipboard integration
- Persistent undo
- Treesitter-based folding
- Format on save (toggleable)
- 250ms update time for responsive UI

## Installation

1. Backup existing config:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

2. Clone this config:
   ```bash
   git clone <your-repo> ~/.config/nvim
   ```

3. Start Neovim:
   ```bash
   nvim
   ```

   Lazy.nvim will automatically install plugins on first launch.

4. Install LSP servers:
   ```
   :Mason
   ```

## Updating

```bash
:Lazy sync
```

## Health Check

```
:checkhealth
```
