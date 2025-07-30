return {
  "hrsh7th/nvim-cmp",
  opts = function()
    -- Carrega a configuração padrão do LazyVim para nvim-cmp
    local cmp = require("cmp")
    local defaults = require("cmp.config").global()

    -- Mescla a configuração padrão com suas alterações
    return vim.tbl_deep_extend("force", defaults, {
      enabled = function()
        local buftype = vim.bo.buftype
        local filetype = vim.bo.filetype
        -- Mantém o comportamento padrão e adiciona a desativação para 'oil'
        return defaults.enabled and buftype ~= "prompt" and filetype ~= "oil"
      end,
    })
  end,
}
