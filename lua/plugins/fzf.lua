return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    opts.winopts = opts.winopts or {}
    opts.winopts.preview = { hidden = "hidden" } -- Desativa o preview por padrão

    opts.keymap = opts.keymap or {}
    opts.keymap.builtin = opts.keymap.builtin or {}
    opts.keymap.builtin["<C-p>"] = "toggle-preview" -- Atalho para alternar preview

    return opts
  end,

  keys = {
    -- Desativa as keymaps padrão antes de sobrescrevê-las
    { "<leader>fr", false },
    { "<leader>fR", false },

    -- Inverte as keymaps
    { "<leader>fr", LazyVim.pick("oldfiles", { cwd = vim.uv.cwd() }), desc = "Recent (cwd)" },
    { "<leader>fR", "<cmd>FzfLua oldfiles<cr>", desc = "Recent" },
  },
}
