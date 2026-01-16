return {
  'sindrets/diffview.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>odv', '<cmd>DiffviewOpen<cr>', desc = 'Diffview Open' },
    { '<leader>odc', '<cmd>DiffviewClose<cr>', desc = 'Diffview Close' },
    { '<leader>odh', '<cmd>DiffviewFileHistory<cr>', desc = 'Diffview File History' },
  },
}
