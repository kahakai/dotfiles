vim.diagnostic.config {
  virtual_text = false,
}

return {
  "folke/trouble.nvim",
  event = { "BufNewFile", "BufReadPre" },
  cmd = "Trouble",
  opts = {
    focus = true,
  },
  keys = {
    {
      "<leader>td",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>tbd",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>tr",
      "<cmd>Trouble lsp_references toggle win.position=right<cr>",
      desc = "LSP references (Trouble)",
    },
  },
}
