return {
  {
    'stevearc/oil.nvim',
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    lazy = false,
    config = function()
      require('oil').setup {
        view_options = {
          show_hidden = true,
        },
        keymaps = {
          ['<CR>'] = 'actions.select',
        },
      }
    end,
  },
}
