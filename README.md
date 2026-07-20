# autolsp.nvim

A Plugin for Neovim that automatically installs and configures LSPs and formatters for you. It is designed to be easy to use and requires minimal configuration.

- [Requirements](#requirements)
- [Features](#features)
- [Installation](#installation)
- [Configuration](#configuration)

## Requirements
- Neovim 0.11 or higher

- nvim-lspconfig
- mason.nvim
- mason-lspconfig
- conform.nvim

## Features
- Automatically install LSPs based on the file you are editing.
- Automatically configure LSPs with defaults (configureable).
- Automatically install and configure formatters based on the file you are editing.

# Installation

<details>
  <summary>lazy.nvim</summary>

```lua
{
	"MoDevIO/autolsp.nvim",

	dependencies = {
        "neovim/nvim-lspconfig",
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
		"stevearc/conform.nvim",
	},

	opts = {},
}
```
</details>

<details>
  <summary>packer.nvim</summary>

```lua
use {
    "MoDevIO/autolsp.nvim",
    requires = {
        "neovim/nvim-lspconfig",
        "mason-org/mason.nvim",
        "mason-org/mason-lspconfig.nvim",
        "stevearc/conform.nvim",
    },
    config = function()
        require("autolsp").setup()
    end,
}
```
</details>

<details>
  <summary>vim-plug</summary>

```vim
Plug 'MoDevIO/autolsp.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'mason-org/mason.nvim'
Plug 'mason-org/mason-lspconfig.nvim'
Plug 'stevearc/conform.nvim'
```
</details>

## Configuration

<details>
  <summary>Default Configuration</summary>

```lua
require("autolsp").setup({
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
    },
})
```
