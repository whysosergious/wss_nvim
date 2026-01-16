return {
  'nvim-treesitter/nvim-treesitter',
  opts = function(_, opts)
    -- ensure javascript and typescript are installed
    if type(opts.ensure_installed) == 'table' then
      vim.list_extend(opts.ensure_installed, { 'javascript', 'typescript', 'tsx' })
    end
    opts.folding = true
    return opts
  end,
}