local active_colorscheme = "tokyonight"

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {},
    lazy = active_colorscheme ~= "rose-pine",
    priority = (active_colorscheme == "rose-pine") and 1000 or nil,
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    opts = {
      style = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    lazy = active_colorscheme ~= "tokyonight",
    priority = (active_colorscheme == "tokyonight") and 1000 or nil,
  },
  {
    "dasupradyumna/midnight.nvim",
    name = "midnight",
    lazy = active_colorscheme ~= "midnight",
    priority = (active_colorscheme == "midnight") and 1000 or nil,
  },
  {
    "vague2k/vague.nvim",
    name = "vague",
    opts = { transparent = false },
    lazy = active_colorscheme ~= "vague",
    priority = (active_colorscheme == "vague") and 1000 or nil,
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
    priority = (active_colorscheme == "kanagawa") and 1000 or nil,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = { flavour = "mocha" },
    lazy = active_colorscheme ~= "catppuccin",
    priority = (active_colorscheme == "catppuccin") and 1000 or nil,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = active_colorscheme,
    },
  },
}
