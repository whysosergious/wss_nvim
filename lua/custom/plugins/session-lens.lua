return {
  'rmagatti/session-lens',
  dependencies = { 'rmagatti/auto-session', 'nvim-telescope/telescope.nvim' },
  config = function()
    require('session-lens').setup {}
    vim.keymap.set('n', '<leader>ss', '<cmd>Telescope session-lens search_session<cr>', { desc = 'Search Sessions' })
  end,
}
