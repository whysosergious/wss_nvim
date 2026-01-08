return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-neotest/neotest-jest',
      'marilari88/neotest-vitest',
      'arthur944/neotest-bun',
      'nvim-neotest/neotest-go',
      'mrcjkb/rustaceanvim',
      'lawrence-laz/neotest-zig',
      'rcasia/neotest-bash',
    },
    keys = {
      { '<leader>tr', '<cmd>Neotest run<cr>', desc = '[t]est [r]un' },
      { '<leader>ti', '<cmd>Neotest output<cr>', desc = '[t]est [i]nfo' },
      { '<leader>ts', '<cmd>Neotest summary<cr>', desc = '[t]est [s]ummary' },
      { '<leader>ta', "<cmd>lua require('neotest').run.run({suite = true })<cr>", desc = '[t]est [a]ll' },
    },
    config = function()
      require('neotest').setup {
        settings = {
          watch = true,
        },
        adapters = {
          require 'neotest-jest',
          require 'neotest-vitest',
          require 'neotest-bun',
          require 'neotest-go',
          require('rustaceanvim.neotest'),
          require 'neotest-zig',
          require 'neotest-bash',
        },
      }
    end,
  },
}
