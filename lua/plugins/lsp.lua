return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        signs = false,
      },
    },
  },
  { "mason-org/mason.nvim", version = "1.11.0" },
  { "mason-org/mason-lspconfig.nvim", version = "1.32.0" },
}