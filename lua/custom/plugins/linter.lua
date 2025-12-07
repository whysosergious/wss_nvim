-- This file configures nvim-lint.
-- It is loaded by lazy.nvim and merges with the main nvim-lint configuration.

return {
  {
    'mfussenegger/nvim-lint',
    config = function()
      local lint = require 'lint'
      -- To allow other plugins to add linters, we use this approach.
      -- This ensures we don't accidentally override configurations from other files.
      lint.linters_by_ft = lint.linters_by_ft or {}

      -- Add eslint_d for web filetypes
      lint.linters_by_ft.javascript = { 'eslint_d' }
      lint.linters_by_ft.typescript = { 'eslint_d' }
      lint.linters_by_ft.javascriptreact = { 'eslint_d' }
      lint.linters_by_ft.typescriptreact = { 'eslint_d' }

      -- The autocommand for running the linter is already set up
      -- in the original kickstart/plugins/lint.lua file.
      -- As long as that file is loaded, we don't need to repeat it.
    end,
  },
}
