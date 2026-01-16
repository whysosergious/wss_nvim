return {
  'sindrets/diffview.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>dv', '<cmd>DiffviewOpen<cr>', desc = 'Diffview Open' },
    { '<leader>dc', '<cmd>DiffviewClose<cr>', desc = 'Diffview Close' },
    { '<leader>dh', '<cmd>DiffviewFileHistory<cr>', desc = 'Diffview File History' },
  },
}
