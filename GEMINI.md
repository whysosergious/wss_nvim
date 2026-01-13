# Neovim Configuration

## Project Overview

This is a Neovim configuration based on the kickstart.nvim project. It's written in Lua and uses `lazy.nvim` for plugin management. The configuration is modular, with plugins and settings split across multiple files in the `lua/` directory.

The configuration has a strong focus on:

*   **Local AI Integration:** It uses `Ollama-Copilot` and `codecompanion.nvim` to provide AI-powered code completion and chat functionality within the editor, utilizing local models like `starcoder2:3b`.
*   **Efficient Fuzzy Finding:** `telescope.nvim` is heavily configured with the `fzf-native` extension for fast file and text searching. Numerous custom keybindings are set up to quickly access different Telescope pickers.
*   **Customization and Extensibility:** The configuration is designed to be easily extended. The `custom/plugins` directory allows for adding and configuring personal plugins without modifying the core kickstart files.

## Key Files

*   `init.lua`: The main entry point for the configuration. It sets global options and loads the other configuration files.
*   `lua/lazy-plugins.lua`: This file defines the plugins to be loaded by `lazy.nvim`. It imports plugins from both the `kickstart/plugins` and `custom/plugins` directories.
*   `lua/options.lua`: Contains a wide range of Neovim settings, including UI preferences, shell integration, and search behavior.
*   `lua/keymaps.lua`: Defines custom keybindings for various actions, such as window navigation, opening terminals, and interacting with plugins.
*   `lua/custom/plugins/`: This directory contains the user's personal plugin configurations, including the AI and Telescope plugins.

## Building and Running

This is a Neovim configuration, so there is no build process. To "run" it, you simply need to open Neovim.

To install the configured plugins, you will need to:

1.  Install the `lazy.nvim` plugin manager. The `lazy-bootstrap.lua` file should handle this automatically.
2.  Start Neovim. The plugins should be installed automatically. You can check the status of the installation by running the `:Lazy` command.

## Development Conventions

The configuration is well-structured and follows standard Lua module conventions. Each file has a clear purpose, and the separation of concerns makes it easy to manage and extend.

The use of the `custom/plugins` directory is a key convention. Any personal plugins or configurations should be added there to keep them separate from the base kickstart configuration.
