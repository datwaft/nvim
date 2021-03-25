-- ========================
-- TREESITTER CONFIGURATION
-- ========================
-- Created by datwaft <github.com/datwaft>

return function()
  local prerequire = require'utils.prerequire'
  local io = require'utils.io'

  local config = prerequire'nvim-treesitter.configs'
  if not config then
    io.warning"Couldn't load `nvim-treesitter.configs` package"
  end
  config.setup {
    ensure_installed = 'maintained',
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    }
  }
  vim.cmd[[set foldmethod=expr]]
  vim.cmd[[set foldexpr=nvim_treesitter#foldexpr()]]
end
