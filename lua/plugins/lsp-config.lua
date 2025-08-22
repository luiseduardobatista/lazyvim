return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      signs = false,
    },
    servers = {
      gopls = {
        settings = {
          gopls = {
            staticcheck = true,
            analyses = {
              ST1000 = false, -- Ignora o aviso sobre a falta de comentário de documentação no pacote
            },
          },
        },
      },
    },
    inlay_hints = { enabled = false },
  },
}
