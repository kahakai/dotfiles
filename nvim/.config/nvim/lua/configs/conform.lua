local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofumpt", "goimports_reviser", "golines" },
  },
  format_on_save = {
    lsp_format = "fallback",
    timeout_ms = 500,
  },
}

require("conform").setup(options)
