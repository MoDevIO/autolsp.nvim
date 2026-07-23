local M = {}

M.options = {
	auto_install = true,
  format_on_save = true,

	servers = {
		lua = {
			lsp = "lua_ls",
			mason = "lua-language-server",
			formatter = "stylua",
		},

		javascript = {
			lsp = "vtsls",
			mason = "vtsls",
			formatter = "prettierd",
		},

		javascriptreact = {
			lsp = "vtsls",
			mason = "vtsls",
      		formatter = "prettierd",
		},

		typescript = {
			lsp = "vtsls",
			mason = "vtsls",
      		formatter = "prettierd",
		},

		typescriptreact = {
			lsp = "vtsls",
			mason = "vtsls",
      		formatter = "prettierd",
		},

		css = {
			lsp = "cssls",
			mason = "css-lsp",
      		formatter = "prettierd",
		},

		html = {
			lsp = "html",
			mason = "html-lsp",
      		formatter = "prettierd",
		},

		python = {
			lsp = "pyright",
			mason = "pyright",
      		formatter = "black",
		},

		rust = {
			lsp = "rust_analyzer",
			mason = "rust-analyzer",
      		formatter = "rustfmt",  
		},

		c = {
			lsp = "clangd",
			mason = "clangd",
      		formatter = "clang-format",
		},

		cpp = {
			lsp = "clangd",
			mason = "clangd",
      		formatter = "clang-format",
		},

		arduino = {
			lsp = "arduino_language_server",
			mason = "arduino-language-server",
			formatter = "clang-format",
		}
	},
}

function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", M.options, opts or {})

	-- print("options: ", vim.inspect(M.options))
end

return M
