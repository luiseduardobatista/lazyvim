return {
  "mrjones2014/smart-splits.nvim",
  config = function()
    local smart_splits = require("smart-splits")
    smart_splits.setup({
      disable_multiplexer_nav_when_zoomed = false,
    })
    vim.keymap.set("n", "<C-h>", smart_splits.move_cursor_left)
    vim.keymap.set("n", "<C-j>", smart_splits.move_cursor_down)
    vim.keymap.set("n", "<C-k>", smart_splits.move_cursor_up)
    vim.keymap.set("n", "<C-l>", smart_splits.move_cursor_right)
    vim.keymap.set("n", "<C-\\>", smart_splits.move_cursor_previous)
  end,
  lazy = false,
}
