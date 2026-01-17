return {
  'mg979/vim-visual-multi',
  branch = 'master',
  init = function()
    vim.g.VM_leader = '\\'
    vim.g.VM_maps = {
      ['Find Under'] = '<M-d>',
      ['Find Subword Under'] = '<M-d>',
      ['Find Next'] = '>',
      ['Find Prev'] = '<',
      ['Goto Next'] = 'g>',
      ['Goto Prev'] = 'g<',
      ['Add Cursor Down'] = '<M-J>',
      ['Add Cursor Up'] = '<M-K>',
      ['Select All'] = '<M-a>',
    }
    vim.g.VM_highlight_matches = 'VM_Green'
  end,
}
