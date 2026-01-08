-- A list of themes for lazy.nvim to install
return {
  -- Set catppuccin as the default theme
  {
    'catppuccin/nvim',
    name = 'catppuccin', -- Optional: A name for the plugin when using a table, helpful for lazy.nvim
    lazy = false,
    priority = 1000,
    -- config = function()
    --   -- Configure catppuccin (optional, but good practice if you want to set styles)
    --   -- For example, to set 'mocha' as the style:
    --   require('catppuccin').setup {
    --     flavour = 'mocha', -- or 'latte', 'frappe', 'macchiato'
    --     background = { -- light, dark
    --       light = 'latte',
    --       dark = 'mocha',
    --     },
    --     integrations = {
    --       cmp = true,
    --       gitsigns = true,
    --       nvimtree = true, -- If using nvim-tree.lua
    --       telescope = true,
    --       notify = true,
    --       mini = true,
    --       -- For any other plugins you use that have catppuccin integration
    --     },
    --   }
    --   vim.cmd.colorscheme 'catppuccin'
    -- end,
  },

  -- Other themes can remain as simple strings or with basic config if needed.
  -- Ensure tokyonight is not also set as lazy=false, priority=1000 with a config.
  {
    'loctvl842/monokai-pro.nvim',
    config = function()
      require('monokai-pro').setup {
        transparent_background = false,
        terminal_colors = true,
        devicons = true, -- highlight the icons of `nvim-web-devicons`
        styles = {
          comment = { italic = true },
          keyword = { italic = true }, -- any other keyword
          type = { italic = true }, -- (preferred) int, long, char, etc
          storageclass = { italic = true }, -- static, register, volatile, etc
          structure = { italic = true }, -- struct, union, enum, etc
          parameter = { italic = true }, -- parameter pass in function
          annotation = { italic = true },
          tag_attribute = { italic = true }, -- attribute of tag in reactjs
        },
        filter = 'octagon', -- classic | octagon | pro | machine | ristretto | spectrum
        -- Enable this will disable filter option
        day_night = {
          enable = false, -- turn off by default
          day_filter = 'pro', -- classic | octagon | pro | machine | ristretto | spectrum
          night_filter = 'spectrum', -- classic | octagon | pro | machine | ristretto | spectrum
        },
        inc_search = 'background', -- underline | background
        background_clear = {
          -- "float_win",
          'toggleterm',
          'telescope',
          -- "which-key",
          'renamer',
          'notify',
          -- "nvim-tree",
          -- "neo-tree",
          -- "bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
        }, -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree", "nvim-tree", "bufferline"
        plugins = {
          bufferline = {
            underline_selected = false,
            underline_visible = false,
          },
          indent_blankline = {
            context_highlight = 'default', -- default | pro
            context_start_underline = false,
          },
        },
        ---@param c Colorscheme
        -- override = function(c) end,
        ---@param cs Colorscheme
        ---@param p ColorschemeOptions
        ---@param Config MonokaiProOptions
        ---@param hp Helper
        -- override = function(cs: Colorscheme, p: ColorschemeOptions, Config: MonokaiProOptions, hp: Helper) end,
      }
      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
  'folke/tokyonight.nvim', -- No longer default, so just list it
  'rose-pine/neovim',
  'rebelot/kanagawa.nvim',
  'sainnhe/gruvbox-material',
  'ellisonleao/gruvbox.nvim',
  'navarasu/onedark.nvim',
  'Mofiqul/dracula.nvim',
  'marko-cerovac/material.nvim',
  'Everblush/everblush.nvim',
  'sainnhe/sonokai',
  'nyoom-engineering/oxocarbon.nvim',
  'nordtheme/vim',
}
