vim.diagnostic.config {
  virtual_text = false,
}

local map = vim.keymap.set

map("n", "<leader>lw", function()
  require("trouble").toggle "workspace_diagnostics"
end, { desc = "Open the list of workspace diagnostics" })

map("n", "<leader>ld", function()
  require("trouble").toggle "document_diagnostics"
end, { desc = "Open the list of document diagnostics" })

map("n", "<leader>lr", function()
  require("trouble").toggle "lsp_references"
end, { desc = "Open the list of LSP references of the word under the cursor" })
