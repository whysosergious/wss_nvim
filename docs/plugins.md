# Plugin Documentation

This document lists all the plugins used in this Neovim configuration.

For more information about a specific plugin, you can search for it on GitHub using the plugin name (e.g., `https://github.com/hrsh7th/nvim-cmp`).

## Custom Plugins

These plugins are configured in the `lua/custom/plugins/` directory.

| Plugin                                     | Description                               |
| ------------------------------------------ | ----------------------------------------- |
| `mg979/vim-visual-multi`                   | Multiple cursor editing.                  |
| `nvim-telescope/telescope.nvim`            | A highly extendable fuzzy finder.         |
| `nvim-lua/plenary.nvim`                    | A library of useful Lua functions for Neovim. |
| `nvim-telescope/telescope-fzf-native.nvim` | FZF sorter for Telescope.                 |
| `nvim-telescope/telescope-ui-select.nvim`  | A Telescope extension for better UI.      |
| `nvim-tree/nvim-web-devicons`              | Icons for file types.                     |
| `mrcjkb/rustaceanvim`                      | A comprehensive Rust development environment. |
| `nvim-lualine/lualine.nvim`                | A blazing fast and easy to configure statusline. |
| `Jacob411/Ollama-Copilot`                  | AI code completion with Ollama.           |
| `olimorris/codecompanion.nvim`             | AI chat and code assistant.               |
| `windwp/nvim-ts-autotag`                   | Automatically adds closing tags for HTML and XML. |
| `mfussenegger/nvim-lint`                   | An asynchronous linter plugin.            |
| `kdheepak/lazygit.nvim`                    | A UI for git commands.                    |
| `folke/flash.nvim`                         | A highly configurable jump plugin.        |
| `nvim-neotest/neotest`                     | A framework for running tests.            |
| `nvim-neotest/nvim-nio`                    | A library for asynchronous I/O.           |
| `antoinemadec/FixCursorHold.nvim`          | A fix for a cursor hold issue.            |
| `nvim-treesitter/nvim-treesitter`          | A framework for parsing code with Tree-sitter. |
| `nvim-neotest/neotest-jest`                | A Neotest adapter for Jest.               |
| `marilari88/neotest-vitest`                | A Neotest adapter for Vitest.             |
| `arthur944/neotest-bun`                    | A Neotest adapter for Bun.                |
| `nvim-neotest/neotest-go`                  | A Neotest adapter for Go.                 |
| `lawrence-laz/neotest-zig`                 | A Neotest adapter for Zig.                |
| `rcasia/neotest-bash`                      | A Neotest adapter for Bash.               |
| `catppuccin/nvim`                          | A popular colorscheme.                    |
| `loctvl842/monokai-pro.nvim`               | A Monokai Pro colorscheme.                |
| `folke/tokyonight.nvim`                    | A popular colorscheme.                    |
| `rose-pine/neovim`                         | A popular colorscheme.                    |
| `rebelot/kanagawa.nvim`                    | A popular colorscheme.                    |
| `sainnhe/gruvbox-material`                 | A popular colorscheme.                    |
| `ellisonleao/gruvbox.nvim`                 | A popular colorscheme.                    |
| `navarasu/onedark.nvim`                    | A popular colorscheme.                    |
| `Mofiqul/dracula.nvim`                     | A popular colorscheme.                    |
| `marko-cerovac/material.nvim`              | A popular colorscheme.                    |
| `Everblush/everblush.nvim`                 | A popular colorscheme.                    |
| `sainnhe/sonokai`                          | A popular colorscheme.                    |
| `nyoom-engineering/oxocarbon.nvim`         | A popular colorscheme.                    |
| `nordtheme/vim`                            | A popular colorscheme.                    |
| `stevearc/oil.nvim`                        | A file explorer.                          |
| `echasnovski/mini.icons`                   | A set of icons for Neovim.                |
| `anuvyklack/hydra.nvim`                    | A plugin for creating custom menus.       |
| `stevearc/conform.nvim`                    | A plugin for formatting code.             |
| `CRAG666/code_runner.nvim`                 | A plugin for running code.                |
| `akinsho/bufferline.nvim`                  | A line of buffers at the top of the editor. |

## Kickstart Plugins

These plugins are configured in the `lua/kickstart/plugins/` directory and are part of the base `kickstart.nvim` configuration.

| Plugin                                | Description                                       |
| ------------------------------------- | ------------------------------------------------- |
| `lewis6991/gitsigns.nvim`             | Git decorations in the sign column.               |
| `hrsh7th/nvim-cmp`                    | A completion engine.                              |
| `L3MON4D3/LuaSnip`                    | A snippet engine.                                 |
| `rafamadriz/friendly-snippets`        | A collection of snippets.                         |
| `saadparwaiz1/cmp_luasnip`            | A completion source for LuaSnip.                  |
| `hrsh7th/cmp-nvim-lsp`                | A completion source for the LSP client.           |
| `hrsh7th/cmp-path`                    | A completion source for file paths.               |
| `hrsh7th/cmp-nvim-lsp-signature-help` | Signature help for the LSP client.                |
| `folke/lazydev.nvim`                  | A plugin for developing Neovim plugins.           |
| `neovim/nvim-lspconfig`               | Configurations for the Neovim LSP client.         |
| `williamboman/mason.nvim`             | A package manager for LSP servers.                |
| `williamboman/mason-lspconfig.nvim`   | A bridge between Mason and lspconfig.             |
| `WhoIsSethDaniel/mason-tool-installer.nvim` | An installer for tools with Mason.          |
| `j-hui/fidget.nvim`                   | A UI for LSP progress.                            |
| `folke/todo-comments.nvim`            | Highlights TODO comments.                         |
| `windwp/nvim-autopairs`               | Automatically closes pairs of brackets, etc.      |
| `folke/which-key.nvim`                | Shows available keybindings.                      |
| `echasnovski/mini.nvim`               | A collection of minimal plugins.                  |
| `lukas-reineke/indent-blankline.nvim` | Adds indentation guides.                          |
| `mfussenegger/nvim-dap`               | A debug adapter protocol implementation.          |
| `rcarriga/nvim-dap-ui`                | A UI for the debug adapter protocol.              |
| `jay-babu/mason-nvim-dap.nvim`        | A bridge between Mason and nvim-dap.              |
| `nvim-neo-tree/neo-tree.nvim`         | A file explorer.                                  |
| `MunifTanjim/nui.nvim`                | A UI library for Neovim.                          |
