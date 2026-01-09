return {
  {
    'anuvyklack/hydra.nvim',
    config = function()
      local Hydra = require 'hydra'

      Hydra {
        name = 'Buffer Hydra',
        hint = [[
      ^
      ^ _n_: next
      ^ _p_: prev
      ^ _c_: close
      ^ _q_: quit
      ]],
        mode = 'n',
        body = '<leader>b',
        heads = {
          { 'n', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next' } },
          { 'p', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Prev' } },
          { 'c', '<cmd>bdelete<cr>', { desc = 'Close' } },
          { 'q', nil, { exit = true, desc = 'Quit' } },
        },
      }
    end,
  },
}
