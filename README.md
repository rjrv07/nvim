# nvim

Personal Neovim configuration — Lua-based, minimal, fast.

## Prerequisites

- Neovim 0.10+
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (for icons)
- `make` and a C compiler (for telescope-fzf-native)
- LSP servers installed on the system (see [Language Support](#language-support))

## Installation

```bash
git clone https://github.com/rjrv07/nvim ~/.config/nvim
nvim  # lazy.nvim bootstraps automatically on first launch
```

## Keymaps

**Leader**: `Space` · **Local leader**: `\`

| Key | Action |
|-----|--------|
| `<C-n>` | Toggle file explorer |
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `K` | LSP hover docs |
| `gd` | Go to definition |

## Plugins

| Plugin | Purpose |
|--------|---------|
| [catppuccin](https://github.com/catppuccin/nvim) | Colorscheme (mocha) |
| [lualine](https://github.com/nvim-lualine/lualine.nvim) | Status line |
| [gitsigns](https://github.com/lewis6991/gitsigns.nvim) | Git decorations |
| [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) | File explorer |
| [telescope](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting & indentation |
| [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim) | Splash screen |

## Language Support

LSP uses Neovim's native client — no plugins required. Servers must be installed on your system:

| Language | Server | Install |
|----------|--------|---------|
| Lua | lua-language-server | `brew install lua-language-server` |
| C / C++ / CUDA | clangd | `brew install llvm` |
| CMake | cmake-language-server | `pip install cmake-language-server` |

Treesitter parsers: `lua`, `cpp`, `cmake`, `haskell`, `python`.

## Structure

```
~/.config/nvim/
├── init.lua              # Entry point
├── lua/
│   ├── vim-options.lua   # Editor settings
│   ├── lsp-options.lua   # LSP client setup & completion
│   ├── config/
│   │   └── lazy.lua      # Plugin manager bootstrap
│   └── plugins/          # One file per plugin
└── lsp/                  # One file per LSP server
```

Adding a plugin: drop a new file into `lua/plugins/`.  
Adding an LSP server: drop a new file into `lsp/`.

## Plugin Management

Run `:Lazy` inside Neovim to open the plugin manager UI.
