return {
  "stevearc/oil.nvim",
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
      is_always_hidden = function(name, _)
        local always_hidden = {
          [".git"] = true,
          [".idea"] = true,
          [".gitlab"] = true,
          [".."] = true,
        }

        if always_hidden[name] then
          return true
        end

        -- Verifica se termina com '._cache' ou '._cache/'
        return name:match("._cache/?$") ~= nil
      end,
    },
  },
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  lazy = false,
}
