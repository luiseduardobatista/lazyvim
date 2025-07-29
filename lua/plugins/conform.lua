return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        golines = {
          command = "golines",
          args = { "--max-len=100" },
        },
      },
      formatters_by_ft = {
        go = { "goimports", "golines" },
      },
    },
  },
}
