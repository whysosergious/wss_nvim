return {
  {
    'Jacob411/Ollama-Copilot',
    event = 'InsertEnter',
    opts = {
      ollama_model_opts = { model = 'starcoder2:3b', num_predict = 80 },
      keymaps = {
        suggestion = '<leader>as',
        insert_accept = '<Tab>',
      },
    },
  },

  {
    'olimorris/codecompanion.nvim', -- Fixed repo name
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter' },
    opts = {
      strategies = {
        chat = {
          adapter = 'ollama',
          opts = { model = 'starcoder2:3b' },
        },
      },
    },
    keys = {
      { '<leader>ac', '<cmd>CodeCompanionChat<cr>', desc = 'AI Chat' },
      { '<leader>ag', '<cmd>CodeCompanionGenerate<cr>', mode = 'v', desc = 'AI Generate' },
      { '<leader>ar', '<cmd>CodeCompanionRefactor<cr>', mode = 'v', desc = 'AI Refactor' },
      { '<leader>ae', '<cmd>CodeCompanionExplain<cr>', mode = 'v', desc = 'AI Explain' },
      { '<leader>at', '<cmd>CodeCompanionAddTests<cr>', mode = 'v', desc = 'AI Add Tests' },
    },
  },
}
