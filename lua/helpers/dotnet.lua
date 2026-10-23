-- Small helper to run shell commands in a terminal split, used by the
-- C#/.NET dotnet CLI keymaps.

local M = {}

local dotnet_win = nil

function M.run(cmd)
  if dotnet_win and vim.api.nvim_win_is_valid(dotnet_win) then
    local buf = vim.api.nvim_win_get_buf(dotnet_win)
    if vim.bo[buf].buftype == 'terminal' and vim.bo[buf].channel > 0 then
      vim.api.nvim_set_current_win(dotnet_win)
      -- Ctrl-L clears the screen in most shells, then re-run the command
      vim.fn.chansend(vim.bo[buf].channel, vim.api.nvim_replace_termcodes(cmd .. '\n', true, false, true))
      vim.cmd 'wincmd p'
      return
    end
  end

  vim.cmd '15new'
  dotnet_win = vim.api.nvim_get_current_win()
  vim.cmd('terminal ' .. cmd)
end

return M
