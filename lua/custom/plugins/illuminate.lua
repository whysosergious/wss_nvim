return {
  'RRethy/vim-illuminate',
  event = 'LspAttach',
  opts = {
    delay = 200,
  },
  config = function(_, opts)
    require('illuminate').configure(opts)
  end,
}
