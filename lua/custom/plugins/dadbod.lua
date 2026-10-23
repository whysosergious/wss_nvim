-- SQL database client: vim-dadbod + vim-dadbod-ui.
--
-- Open the database browser with <leader>sQ (:DBUIToggle).
-- Add connections from the UI (:DBUIAddConnection) or by declaring them in
-- ~/.config/nvim/db_connections/database.json (the UI will prompt you for it).
--
-- The typical backend workflow:
--   1. :DBUI          -> pick a connection, browse tables/columns
--   2. press `S` on a table -> it opens a buffer already with SELECT ...
--   3. type your SQL, then :w inside the db buffer to execute and see results.

return {
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      { 'tpope/vim-dadbod', lazy = true },
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    },
    cmd = { 'DBUI', 'DBUIToggle', 'DBUIAddConnection', 'DBUIFindBuffer', 'DBUIRenameConnection', 'DBUILastQueryInfo' },
    keys = {
      { '<leader>sQ', '<cmd>DBUIToggle<cr>', desc = '[S]QL: toggle [Q]uery UI (vim-dadbod)' },
      { '<leader>sq', '<cmd>DBUILastQueryInfo<cr>', desc = '[S]QL: last query info' },
    },
    init = function()
      vim.g.db_ui_use_nerd_fonts = 1
      -- Saved connections live inside the nvim config dir (gitignore if you commit secrets!)
      vim.g.db_ui_save_location = vim.fn.stdpath 'config' .. '/db_connections'
      vim.g.db_ui_execute_on_save = 1
      vim.g.db_ui_auto_execute_table_helpers = 1
      vim.g.db_ui_icons = {
        expanded = { db = '▾ ', buffers = '▾ ', schemas = '▾ ', tables = '▾ ' },
        collapsed = { db = '▸ ', buffers = '▸ ', schemas = '▸ ', tables = '▸ ' },
      }
    end,
    config = function()
      -- Buffer-local completion for SQL buffers: dadbod tables/columns first,
      -- then LSP keywords, snippets and paths.
      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'sql', 'mysql', 'plsql' },
        callback = function()
          require('cmp').setup.buffer {
            sources = {
              { name = 'vim_dadbod_completion', priority = 1000 },
              { name = 'nvim_lsp', priority = 700 },
              { name = 'luasnip' },
              { name = 'path' },
            },
          }
        end,
      })
    end,
  },
}
