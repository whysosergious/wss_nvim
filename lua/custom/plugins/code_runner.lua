return {
  'CRAG666/code_runner.nvim',
  config = function()
    require('code_runner').setup {
      filetype = {
        javascript = 'deno run',
        typescript = 'deno run',
      },
    }
  end,
  keys = {
    { '<leader>cr', '<cmd>RunCode<CR>', desc = 'Run Code' },
  },
}
