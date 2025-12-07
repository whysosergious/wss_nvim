-- This file configures formatters for conform.nvim.
-- It is loaded by lazy.nvim and merges with the main conform.nvim configuration.

return {
  {
    'stevearc/conform.nvim',
    -- The 'opts' table will be merged with the existing configuration.
    opts = {
      formatters_by_ft = {
        -- Use prettier for all web-related filetypes
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        javascriptreact = { 'prettier' },
        typescriptreact = { 'prettier' },
        vue = { 'prettier' },
        css = { 'prettier' },
        scss = { 'prettier' },
        html = { 'prettier' },
        json = { 'prettier' },
        yaml = { 'prettier' },
        markdown = { 'prettier' },
        -- You can add other formatters for other languages here
      },
    },
  },
}
