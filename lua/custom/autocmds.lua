vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function()
    if vim.bo.filetype ~= 'TelescopePrompt' and vim.bo.filetype ~= 'neo-tree' then
      vim.opt.foldmethod = 'expr'
      vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
      vim.opt.foldenable = true
      vim.cmd 'normal zX'
    end
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'html',
  callback = function()
    vim.treesitter.stop()
  end,
})
