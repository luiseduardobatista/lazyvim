return {
  "ibhagwan/fzf-lua",
  opts = {
    winopts = {
      preview = { hidden = false }, -- Desativa o preview por padrão
    },
    oldfiles = {
      include_current_session = true, -- Inclui buffers antigos no oldfiles
    },
    keymap = {
      builtin = {
        ["<C-p>"] = "toggle-preview", -- Ctrl + P para alternar preview
      },
    },
    previewers = {
      builtin = {
        -- Evita highlight em arquivos >100KB no preview (Treesitter trava).
        syntax_limit_b = 1024 * 100, -- 100KB
      },
    },
  },
  keys = {
    -- Desativa as keymaps padrão antes de sobrescrevê-las
    { "<leader>fr", false },
    { "<leader>fR", false },

    -- Inverte as keymaps
    { "<leader>fr", LazyVim.pick("oldfiles", { cwd = vim.uv.cwd() }), desc = "Recent (cwd)" },
    { "<leader>fR", "<cmd>FzfLua oldfiles<cr>", desc = "Recent" },
  },
}
