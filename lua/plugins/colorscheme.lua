local active_colorscheme = "midnight"

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {},
    lazy = active_colorscheme ~= "rose-pine",
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    opts = { style = "night", transparent = true },
    lazy = active_colorscheme ~= "tokyonight",
  },
  {
    "dasupradyumna/midnight.nvim",
    name = "midnight",
    lazy = active_colorscheme ~= "midnight",
  },
  {
    "vague2k/vague.nvim",
    name = "vague",
    opts = { transparent = false },
    lazy = active_colorscheme ~= "vague",
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    opts = {
      colors = { theme = { all = { ui = { bg_gutter = "none" } } } },
      commentStyle = { italic = false },
      functionStyle = {},
      keywordStyle = { italic = false },
    },
    lazy = active_colorscheme ~= "kanagawa",
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = { flavour = "mocha" },
    lazy = active_colorscheme ~= "catppuccin",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = active_colorscheme,
    },
  },
}
