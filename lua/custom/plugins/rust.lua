return {
  {
    'mrcjkb/rustaceanvim',
    version = '^4', -- Use the latest stable version
    ft = { 'rust' },
    config = function()
      vim.g.rustaceanvim = {
        tools = {
          inlay_hints = {
            auto = true,
          },
        },
      }
    end,
  },
}
