-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-h>", require("smart-splits").move_cursor_left)
vim.keymap.set("n", "<C-j>", require("smart-splits").move_cursor_down)
vim.keymap.set("n", "<C-k>", require("smart-splits").move_cursor_up)
vim.keymap.set("n", "<C-l>", require("smart-splits").move_cursor_right)
vim.keymap.set("n", "<C-\\>", require("smart-splits").move_cursor_previous)

vim.api.nvim_create_user_command("DeleteBlankLines", function(opts)
  local cmd
  if opts.range > 0 then
    cmd = string.format("silent %d,%dg/^\\s*$/d", opts.line1, opts.line2)
  else
    cmd = "silent %g/^\\s*$/d"
  end
  local lines_before = vim.api.nvim_buf_line_count(0)
  vim.cmd(cmd)
  local lines_after = vim.api.nvim_buf_line_count(0)
  local deleted = lines_before - lines_after
  if deleted > 0 then
    vim.notify(string.format("Deleted %d blank line%s", deleted, deleted == 1 and "" or "s"))
  else
    vim.notify("No blank lines found", vim.log.levels.INFO)
  end
end, {
  desc = "Deleta linhas em branco no buffer ou seleção",
  range = true,
})
local wk = require("which-key")
wk.add({
  { "<leader>cd", ":'<,'>DeleteBlankLines<CR>", desc = "Delete Blank Lines", mode = "v" },
})
