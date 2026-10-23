-- C# / .NET full IDE support.
--
-- Uses the open-source Roslyn language server (the same server used by the
-- official VS Code C# extension) via seblyng/roslyn.nvim, including co-hosted
-- Razor/CSHTML support (the old rzls.nvim is deprecated).
--
-- The `roslyn` server binary is installed by Mason from the Crashdummyy
-- custom registry (same version as VS Code). Make sure Mason reinstalls:
--   :MasonInstall roslyn

return {
  {
    'seblyng/roslyn.nvim',
    ft = { 'cs', 'razor' },
    -- Make sure razor/cshtml files get the `razor` filetype before the plugin loads
    init = function()
      vim.filetype.add {
        extension = {
          razor = 'razor',
          cshtml = 'razor',
        },
      }
    end,
    dependencies = {
      -- Extend Mason with the registry that provides the up-to-date Roslyn
      -- language server (same version as VS Code).
      {
        'williamboman/mason.nvim',
        opts = function(_, opts)
          opts.registries = {
            'github:mason-org/mason-registry',
            'github:Crashdummyy/mason-registry',
          }
          return opts
        end,
      },
    },
    ---@module 'roslyn.config'
    ---@type RoslynNvimConfig
    opts = {
      settings = {
        -- Inlay hints for implicit types, like `var` = implicit variable types
        ['csharp|inlay_hints'] = {
          csharp_enable_inlay_hints_for_implicit_variable_types = true,
          csharp_enable_inlay_hints_for_implicit_object_creation = true,
          csharp_enable_inlay_hints_for_lambda_parameter_types = true,
        },
        -- Code lens for references/definitions, shown by gitsigns/lualine LSP plugins
        ['csharp|code_lens'] = {
          dotnet_enable_references_code_lens = true,
          dotnet_enable_install_dependencies_code_lens = true,
        },
        -- Completion with items from unimported namespaces (VS Code behavior)
        ['csharp|completion'] = {
          dotnet_show_completion_items_from_unimported_namespaces = true,
          dotnet_provide_regex_completion = true,
        },
        -- Organize imports when formatting (csharpier is the formatter itself)
        ['csharp|formatting'] = {
          dotnet_organize_imports_on_format = true,
        },
        -- Search symbols in referenced assemblies too (like Go-to-definition on NuGet packages)
        ['csharp|symbol_search'] = {
          dotnet_search_reference_assemblies = true,
        },
      },
    },
    keys = {
      -- dotnet CLI integration via terminal split. All under <leader>.
      {
        '<leader>.b',
        function()
          require('helpers.dotnet').run 'dotnet build'
        end,
        desc = '[.] dotnet [b]uild',
      },
      {
        '<leader>.r',
        function()
          require('helpers.dotnet').run 'dotnet run'
        end,
        desc = '[.] dotnet [r]un',
      },
      {
        '<leader>.w',
        function()
          require('helpers.dotnet').run 'dotnet watch run'
        end,
        desc = '[.] dotnet [w]atch (hot reload)',
      },
      {
        '<leader>.t',
        function()
          require('helpers.dotnet').run 'dotnet test'
        end,
        desc = '[.] dotnet [t]est',
      },
      {
        '<leader>.g',
        function()
          require('helpers.dotnet').run 'dotnet ef database update'
        end,
        desc = '[.] EF Core update database',
      },
      {
        '<leader>.x',
        function()
          require('helpers.dotnet').run('dotnet ' .. vim.fn.input 'dotnet> ')
        end,
        desc = '[.] run arbitrary dotnet command',
      },
    },
  },
}
