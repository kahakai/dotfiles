return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "go",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    build = ":MasonInstallAll",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "gopls",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    event = { "BufNewFile", "BufReadPre" },
    config = function()
      require "configs.conform"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = { "BufNewFile", "BufReadPre" },
    config = function()
      require "configs.lint"
    end,
  },
  {
    "folke/trouble.nvim",
    event = { "BufNewFile", "BufReadPre" },
    config = function()
      require "configs.trouble"
    end,
  },
  {
    "mfussenegger/nvim-dap",
    init = function()
      require "configs.dap"
    end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
      require "configs.dap_go"
    end,
  },
}
