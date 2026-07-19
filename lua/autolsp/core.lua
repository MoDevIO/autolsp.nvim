local M = {}

local function install(server)
  local registry = require("mason-registry")

  if not registry.has_package(server.mason) then
    vim.notify(
      "Unknown Mason package: " .. server.mason,
      vim.log.levels.ERROR
    )
  end

  local pkg = registry.get_package(server.mason)

  if pkg:is_installed() then
    -- vim.notify(server.mason .. " is already installed.")
    vim.lsp.enable(server.lsp)
    vim.lsp.config(server.lsp, {})
    return
  end

  vim.notify("Installing " .. server.mason .. "...")

  registry:once("package:install:success", function(package)
    vim.schedule(function()
      vim.notify(package.name .. " installed successfully!")
      vim.lsp.enable(server.lsp)
    end)
  end)

  pkg:install()

  return false
end


function M.setup()
  local config = require("autolsp.config")

  vim.api.nvim_create_autocmd("FileType", {
    callback = function()
      local server = config.options.servers[vim.bo.filetype]

      if not server then
        return
      end


      install(server)
    end,
  })
end

return M
