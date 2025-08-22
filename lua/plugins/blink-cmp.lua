return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.enabled = function()
      local path = vim.api.nvim_buf_get_name(0)
      if string.find(path, "oil://", 1, true) == 1 then
        return false
      end
      return true
    end
    opts.fuzzy = opts.fuzzy or {}
    opts.fuzzy.implementation = "prefer_rust_with_warning"
  end,
}
