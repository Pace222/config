return {
  "aserowy/tmux.nvim",
  config = function()
    local tmux = require("tmux")
    tmux.setup({
      navigation = {
        cycle_navigation = false,
      },
    })

    local keymap = vim.keymap -- for conciseness
    keymap.set("n", "ª", tmux.resize_left)
    keymap.set("n", "º", tmux.resize_bottom)
    keymap.set("n", "∆", tmux.resize_top)
    keymap.set("n", "¬", tmux.resize_right)
  end,
}
