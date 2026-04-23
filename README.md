# nvim

Personal Neovim configuration — Lua-based, minimal, fast.

## Prerequisites

- Neovim 0.10+
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (for icons)
- `make` and a C compiler (for telescope-fzf-native)

## Installation

```bash
git clone https://github.com/rjrv07/nvim ~/.config/nvim
nvim  # lazy.nvim bootstraps automatically on first launch
```

On first launch, lazy.nvim will install all plugins. LSP servers are installed on demand via Mason — open a file and run `:MasonInstall <server>`, or let mason-lspconfig handle it automatically.

## Keymaps

**Leader**: `Space` · **Local leader**: `\`

| Key | Action |
|-----|--------|
| `<C-n>` | Toggle file explorer |
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `K` | Show hover docs |
| `gd` | Go to definition |
| `<leader>ca` | Code action |
| `<leader>cf` | Format file |
| `<leader>rn` | Rename symbol |

## Plugins

| Plugin | Purpose |
|--------|---------|
| [catppuccin](https://github.com/catppuccin/nvim) | Colorscheme (mocha) |
| [lualine](https://github.com/nvim-lualine/lualine.nvim) | Status line |
| [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) | File explorer |
| [telescope](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting & indentation |
| [mason](https://github.com/williamboman/mason.nvim) | LSP/tool installer |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client config |
| [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim) | Splash screen |

## Language Support

LSP servers are auto-installed via Mason:

| Language | Server | Formatter |
|----------|--------|-----------|
| Lua | lua_ls | stylua |
| C / C++ | clangd | — |
| Haskell | hls | — |
| Python | pyright | — |
| CMake | neocmake | — |

Treesitter parsers installed: `lua`, `cpp`, `cmake`, `haskell`, `python`.

## Structure

```
~/.config/nvim/
├── init.lua              # Entry point
├── lua/
│   ├── vim-options.lua   # Editor settings
│   ├── config/
│   │   └── lazy.lua      # Plugin manager bootstrap
│   └── plugins/          # One file per plugin
└── lazy-lock.json        # Pinned plugin versions
```

Adding a plugin is as simple as dropping a new file into `lua/plugins/` — no registration needed.

## Plugin Management

Run `:Lazy` inside Neovim to open the plugin manager UI.
