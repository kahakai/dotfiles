local map = vim.keymap.set

map("n", "<leader>dgt", function()
  require("dap-go").debug_test()
end, { desc = "Debug go test" })

map("n", "<leader>dgt", function()
  require("dap-go").debug_last()
end, { desc = "Debug last go test" })
