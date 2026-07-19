local M = {}


function M.setup(opts)
  require("mason").setup()
  require("conform").setup()

  local config = require("autolsp.config")

  config.setup(opts)

  require("autolsp.core").setup()
end

return M
