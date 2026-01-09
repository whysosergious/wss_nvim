return {
  'windwp/nvim-ts-autotag',
  ft = { 'html', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'vue', 'astro', 'markdown' },
  config = function()
    require('nvim-ts-autotag').setup({
      -- Whether to enable auto-close on filetypes
      autoclose = {
        enable = true,
      },
      -- Whether to enable auto-rename on filetypes
      -- autorename = {
      --   enable = true,
      -- },
      -- Map of filetypes to disable auto-tagging
      -- disable = { 'xml' },
    })
  end,
}
