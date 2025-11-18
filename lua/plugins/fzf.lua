return {
  "ibhagwan/fzf-lua",
  opts = {
    winopts = {
      preview = {
        hidden = true,
        layout = "horizontal",
        horizontal = "right:45%",
      },
    },
    oldfiles = {
      include_current_session = true,
    },
    keymap = {
      builtin = {
        ["<C-p>"] = "toggle-preview",
      },
    },
    previewers = {
      builtin = {
        syntax_limit_b = 1024 * 100, -- Evita highlight em arquivos >100KB no preview (Treesitter trava)
      },
    },
  },
  keys = {
    { "<leader>fr", false },
    { "<leader>fR", false },
    { "<leader>fr", LazyVim.pick("oldfiles", { cwd = vim.uv.cwd() }), desc = "Recent (cwd)" },
    { "<leader>fR", "<cmd>FzfLua oldfiles<cr>", desc = "Recent" },
  },
}
