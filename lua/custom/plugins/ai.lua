return {
  {
    'Jacob411/Ollama-Copilot',
    event = 'InsertEnter',
    opts = {
      ollama_model_opts = { model = 'starcoder2:3b', num_predict = 80 },
      keymaps = {
        suggestion = '<leader>os',
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
      { '<leader>oc', '<cmd>CodeCompanionChat<cr>', desc = '[c]hat with ollama' },
    },
  },
}
