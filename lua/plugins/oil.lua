return {
  "stevearc/oil.nvim",
  opts = {},
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      default_file_explorer = true,
    })
  end,
}
