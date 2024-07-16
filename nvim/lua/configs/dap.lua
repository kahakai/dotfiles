local map = vim.keymap.set

map("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { desc = "Add breakpoint at line" })

map("n", "<leader>dus", function()
  local widgets = require "dap.ui.widgets"
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end, { desc = "Open debugging sidebar" })
