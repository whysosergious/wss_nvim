-- vim.api.nvim_create_autocmd('SourceCmd', {
--   pattern = vim.env.MYVIMRC or vim.fn.stdpath 'config' .. '/init.lua',
--   callback = function()
--     vim.cmd 'source $MYVIMRC'
--     print '✓ Config reloaded!'
--   end,
-- })

vim.api.nvim_create_user_command('ReloadKeys', function()
  -- Clear the package cache for the keymaps module
  package.loaded['keymaps'] = nil
  -- an protected call to require the keymaps module again
  local keymaps_status, keymaps_err = pcall(require, 'keymaps')
  if not keymaps_status then
    vim.notify('Error reloading keymaps: ' .. keymaps_err, vim.log.levels.ERROR)
    return
  end

  -- Clear the package cache for the hydra plugin's config
  package.loaded['custom.plugins.hydra'] = nil
  local hydra_status, hydra_err = pcall(require, 'custom.plugins.hydra')
  if not hydra_status then
    vim.notify('Error reloading hydra plugin config: ' .. hydra_err, vim.log.levels.ERROR)
    return
  end

  vim.notify('Keymaps and Hydra reloaded successfully!', vim.log.levels.INFO)
end, {
  desc = 'Reload all keymaps and hydras',
})
