local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local options = {
  debugger = {
    -- make these two params true to enable debug mode
    enabled = false,
    run_via_dap = false,
    register_configurations = function(_)
      local dap = require "dap"

      dap.adapters.dart = {
        type = "executable",
        command = "flutter",
        args = { "debug_adapter" },
      }

      dap.configurations.dart = {
        {
          type = "dart",
          request = "launch",
          name = "Launch Flutter app",
          program = "${workspaceFolder}/lib/main.dart",
          cwd = "${workspaceFolder}",
        },
      }
    end,
  },
  lsp = {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  },
}

return {
  "akinsho/flutter-tools.nvim",
  event = { "BufNewFile", "BufReadPre" },
  ft = "dart",
  config = function()
    require("flutter-tools").setup(options)
  end,
}
