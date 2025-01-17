return {
  "github/copilot.vim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local keymap = vim.keymap -- for conciseness
    keymap.set("i", "$", 'copilot#Accept("$")', {
      expr = true,
      replace_keycodes = false,
    })
    vim.g.copilot_no_tab_map = true
    keymap.set("i", "<C-e>", "<Plug>(copilot-dismiss)")
  end,
}
