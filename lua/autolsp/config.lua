local M = {}

M.options = {
  auto_install = true,

  servers = {
    lua = {
      lsp = "lua_ls",
      mason = "lua-language-server",
    },

    javascript = {
      lsp = "vtsls",
      mason = "vtsls",
    },

    javascriptreact = {
      lsp = "vtsls",
      mason = "vtsls",
    },

    typescript = {
      lsp = "vtsls",
      mason = "vtsls",
    },

    typescriptreact = {
      lsp = "vtsls",
      mason = "vtsls",
    },

    css = {
      lsp = "cssls",
      mason = "css-lsp",
    },

    html = {
      lsp = "html",
      mason = "html-lsp",
    },

    python = {
      lsp = "pyright",
      mason = "pyright",
    },

    rust = {
      lsp = "rust_analyzer",
      mason = "rust-analyzer",
    },

    c = {
      lsp = "clangd",
      mason = "clangd",
    },

    cpp = {
      lsp = "clangd",
      mason = "clangd",
    },
  }

}

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", M.options, opts or {})

  -- print("options: ", vim.inspect(M.options))
end

return M
