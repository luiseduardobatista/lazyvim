return {
  {
    "catppuccin",
    opts = {
      flavour = "mocha",
      no_italic = true,
      term_colors = true,
      transparent_background = true,
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
      integrations = {
        telescope = {
          enabled = true,
          style = "nvchad",
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
      },
    },
  },
  { "rose-pine/neovim", name = "rose-pine", opts = { styles = { transparency = true } } },
  { "ellisonleao/gruvbox.nvim", name = "gruvbox", opts = { contrast = "hard" } },
  { "folke/tokyonight.nvim", name = "tokyonight", opts = { transparent = true } },
  { "nyoom-engineering/oxocarbon.nvim", name = "oxocarbon" },
  { "dasupradyumna/midnight.nvim", name = "midnight" },
  { "dgox16/oldworld.nvim", name = "oldworld" },
  { "vague2k/vague.nvim", name = "vague", opts = { transparent = true } },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
    init = function()
      vim.cmd("highlight ColorColumn ctermbg=0 guibg=Grey")
    end,
  },
}
