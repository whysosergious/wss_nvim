local pictures_dir = os.getenv 'XDG_PICTURES_DIR' or (os.getenv 'HOME' .. '/Pictures')

-- Define the modern CodeSnap v2 schema
local snap_options = {
  code_font_family = 'JetBrainsMono Nerd Font',
  show_line_number = true,

  -- In v2, all appearance/canvas layouts live inside snapshot_config
  snapshot_config = {
    -- Setting both margin axes to 0 removes the outer gradient background
    window = {
      mac_window_bar = false, -- Disables the Mac window dots
      margin = { x = 0, y = 0 }, -- Replaces bg_padding = 0
      shadow = { radius = 0, color = '#00000000' }, -- Drops window shadow
    },
    -- In v2, watermark is a table rather than a string
    watermark = {
      content = '', -- Strips the "CodeSnap.nvim" logo text
    },
  },
}

return {
  'mistricky/codesnap.nvim',
  build = 'make',
  cmd = { 'CodeSnap', 'CodeSnapSave', 'CodeSnapHighlight', 'CodeSnapASCII' },
  keys = {
    { '<leader>cs', '<cmd>CodeSnap<cr>', mode = 'x', desc = 'CodeSnap to clipboard' },
    {
      '<leader>cS',
      function()
        -- 1. Explicitly force Neovim to register visual selection ranges
        -- before leaving visual mode, fixing the "no code selected" bug.
        vim.cmd 'normal! \27'

        -- 2. Build the output path
        local path = pictures_dir .. '/Screenshots/' .. ('CodeSnap-%s.png'):format(os.date '%Y%m%d-%H%M%S')

        -- 3. Enforce the v2 configuration layout
        local codesnap = require 'codesnap'
        codesnap.setup(snap_options)

        -- 4. Execute the render pipeline safely
        local ok, err = pcall(codesnap.save, path)
        if not ok then
          vim.notify('codesnap: ' .. tostring(err), vim.log.levels.ERROR)
        end
      end,
      mode = 'x', -- Use 'x' mode for visual-block selection compatibility
      desc = 'CodeSnap save to file',
    },
  },
  config = function()
    require('codesnap').setup(snap_options)
  end,
}
