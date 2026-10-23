-- debug.lua
--
-- Shows how to use the DAP plugin to debug your code.
--
-- Primarily focused on configuring the debugger for Go, but can
-- be extended to other languages as well. That's why it's called
-- kickstart.nvim and not kitchen-sink.nvim ;)

return {
  -- NOTE: Yes, you can install new plugins here!
  'mfussenegger/nvim-dap',
  -- NOTE: And you can specify dependencies as well
  dependencies = {
    -- Creates a beautiful debugger UI
    'rcarriga/nvim-dap-ui',

    -- Required dependency for nvim-dap-ui
    'nvim-neotest/nvim-nio',

    -- Installs the debug adapters for you
    'williamboman/mason.nvim',
    'jay-babu/mason-nvim-dap.nvim',

    -- Add your own debuggers here
  },
  keys = {
    -- Basic debugging keymaps, feel free to change to your liking!
    {
      '<F5>',
      function()
        require('dap').continue()
      end,
      desc = 'Debug: Start/Continue',
    },
    {
      '<F1>',
      function()
        require('dap').step_into()
      end,
      desc = 'Debug: Step Into',
    },
    {
      '<F2>',
      function()
        require('dap').step_over()
      end,
      desc = 'Debug: Step Over',
    },
    {
      '<F3>',
      function()
        require('dap').step_out()
      end,
      desc = 'Debug: Step Out',
    },
    {
      '<leader>b',
      function()
        require('dap').toggle_breakpoint()
      end,
      desc = 'Debug: Toggle Breakpoint',
    },
    {
      '<leader>B',
      function()
        require('dap').set_breakpoint(vim.fn.input 'Breakpoint condition: ')
      end,
      desc = 'Debug: Set Breakpoint',
    },
    -- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
    {
      '<F7>',
      function()
        require('dapui').toggle()
      end,
      desc = 'Debug: See last session result.',
    },
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    require('mason-nvim-dap').setup {
      -- Makes a best effort to setup the various debuggers with
      -- reasonable debug configurations
      automatic_installation = true,

      -- You can provide additional configuration to the handlers,
      -- see mason-nvim-dap README for more information
      handlers = {},

      -- You'll need to check that you have the required things installed
      -- online, please don't ask me how to install them :)
      ensure_installed = {
        -- Update this to ensure that you have the debuggers for the langs you want
        'codelldb',
        'node-debug2-adapter',
        'netcoredbg', -- C#/.NET debugger
      },
    }

    -- C#/.NET debugger adapter (netcoredbg, installed by Mason)
    local ok, mason_reg = pcall(require, 'mason-registry')
    if ok and mason_reg.is_installed 'netcoredbg' then
      local netcoredbg_path = mason_reg.get_install_path 'netcoredbg'

      dap.adapters.coreclr = {
        type = 'executable',
        command = netcoredbg_path .. '/netcoredbg/netcoredbg',
        args = { '--interpreter=vscode' },
      }
      dap.adapters.netcoredbg = dap.adapters.coreclr

      dap.configurations.cs = {
        {
          name = 'Launch .NET dll (coreclr)',
          type = 'netcoredbg',
          request = 'launch',
          program = function()
            -- Default: the dll matching the csproj name at the workspace root,
            -- built into a bin/Debug folder
            local csproj = vim.fn.glob(vim.fn.getcwd() .. '/*.csproj', false, true)
            local proj_name = csproj ~= '' and vim.fn.fnamemodify(vim.split(csproj, '\n', { trimempty = true })[1], ':t:r') or '*'
            local dlls = vim.split(vim.fn.glob(vim.fn.getcwd() .. '/**/bin/**/Debug/**/' .. proj_name .. '.dll', false, true), '\n', { trimempty = true })
            table.sort(dlls, function(a, b)
              return vim.fn.getftime(a) > vim.fn.getftime(b)
            end)
            return vim.fn.input('Path to dll: ', #dlls > 0 and dlls[1] or vim.fn.getcwd() .. '/', 'file')
          end,
          cwd = '${workspaceFolder}',
          stopAtEntry = false,
          env = {
            ASPNETCORE_ENVIRONMENT = 'Development',
          },
          console = 'internalConsole',
        },
        {
          name = 'Attach to .NET process',
          type = 'netcoredbg',
          request = 'attach',
          processId = function()
            return require('dap.ui.widgets').pick_process {
              filter = 'dotnet',
            }
          end,
        },
      }
      dap.configurations.csharp = dap.configurations.cs
    end

    -- Dap UI setup
    -- For more information, see |:help nvim-dap-ui|
    dapui.setup {
      -- Set icons to characters that are more likely to work in every terminal.
      --    Feel free to remove or use ones that you like more! :)
      --    Don't feel like these are good choices.
      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
      controls = {
        icons = {
          pause = '⏸',
          play = '▶',
          step_into = '⏎',
          step_over = '⏭',
          step_out = '⏮',
          step_back = 'b',
          run_last = '▶▶',
          terminate = '⏹',
          disconnect = '⏏',
        },
      },
    }

    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close
  end,
}
