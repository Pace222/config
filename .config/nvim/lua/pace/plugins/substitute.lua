return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local substitute = require("substitute")

    substitute.setup()

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "è", substitute.operator, { desc = "Substitute with motion" })
    keymap.set("n", "ü", substitute.line, { desc = "Substitute line" })
    keymap.set("x", "è", substitute.visual, { desc = "Substitute in visual mode" })
  end,
}
