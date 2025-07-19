return {
  "folke/noice.nvim",
  opts = {
    routes = {
      {
        filter = {
          event = "notify",
          find = "No information available",
        },
        view = "cmdline",
        opts = {
          skip = true,
        },
      },
    },
    cmdline = { view = "cmdline" },
    presets = {
      command_palette = false,
      lsp_doc_border = true,
      inc_rename = false,
    },
  },
}
