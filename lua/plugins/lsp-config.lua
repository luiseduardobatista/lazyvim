return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      signs = false,
    },
    servers = {
      rust_analyzer = {
        mason = false,
      },
    },
    inlay_hints = { enabled = false },
  },
}
