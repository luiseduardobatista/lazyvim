return {
  {
    "ibhagwan/fzf-lua",
    opts = function(_, opts)
      opts.winopts = opts.winopts or {}
      opts.winopts.preview = { hidden = "hidden" } -- Desativa o preview por padrão
      opts.oldfiles = opts.oldfiles or {}
      opts.oldfiles.include_current_session = true -- Inclui buffers antigos no oldfiles

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
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        default_file_explorer = true,
      })
    end,
  },
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
    opts = {
      auto_refresh = true,
    },
  },
  {
    "m4xshen/hardtime.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {},
  },
}