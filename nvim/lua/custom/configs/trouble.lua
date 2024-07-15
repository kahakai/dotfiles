vim.diagnostic.config {
  virtual_text = false,
}

vim.keymap.set("n", "<leader>lw", function()
  require("trouble").toggle "workspace_diagnostics"
end, { desc = "Open the list of workspace diagnostics" })

vim.keymap.set("n", "<leader>ld", function()
  require("trouble").toggle "document_diagnostics"
end, { desc = "Open the list of document diagnostics" })

vim.keymap.set("n", "<leader>lr", function()
  require("trouble").toggle "lsp_references"
end, { desc = "Open the list of LSP references of the word under the cursor" })
