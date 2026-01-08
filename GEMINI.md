# Neovim Configuration

## Project Overview

This is a personal Neovim configuration. It uses `lazy.nvim` for plugin management and is structured in a modular way. The configuration is written in Lua.

The configuration is based on the `kickstart.nvim` template, with personal customizations and additional plugins.

## Key Technologies

*   **Neovim:** The text editor.
*   **Lua:** The language used for configuration.
*   **lazy.nvim:** The plugin manager.

## Building and Running

There is no build process for this project. To use this configuration, you need to have Neovim installed.

1.  Clone this repository to `~/.config/nvim`.
2.  Start Neovim. `lazy.nvim` will automatically install the configured plugins.

To update the plugins, run the following command in Neovim:

```
:Lazy update
```

## Development Conventions

The configuration is structured in a modular way.

*   `init.lua`: The main entry point.
*   `lua/options.lua`: Global Neovim options.
*   `lua/keymaps.lua`: Global key mappings.
*   `lua/lazy-plugins.lua`: The main plugin configuration file for `lazy.nvim`.
*   `lua/kickstart/plugins/`: Contains the base plugins from the `kickstart.nvim` template.
*   `lua/custom/plugins/`: Contains personal plugin configurations.

Any new plugin configuration should be added as a new file in the `lua/custom/plugins/` directory.

### Key Plugins

*   **gitsigns:** Git integration.
*   **which-key:** Shows a popup with possible keybindings.
*   **lspconfig:** Configures the built-in LSP client.
*   **conform:** A code formatter.
*   **cmp:** A completion engine.
*   **todo-comments:** Highlights and searches for TODO comments.
*   **mini.nvim:** A collection of minimal plugins.
*   **treesitter:** For syntax highlighting and code parsing.
*   **oil.nvim:** A file manager.
*   **ChatGPT.nvim:** An integration with OpenAI's GPT models.

### Customizations

*   The shell is set to `nu` (Nushell).
*   The leader key is set to the space bar.
*   Custom key mappings for window navigation, terminal splits, and more.
*   Specific key mappings for paragraph navigation using 'ä' and 'å'.
*   Visual mode indentation with `Tab` and `Shift-Tab`.
