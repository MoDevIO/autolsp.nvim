# autolsp.nvim

A Plugin for Neovim that automatically installs and configures LSPs and Formatters for you. It is designed to be easy to use and requires minimal configuration.

- [Requirements](#requirements)
- [Features](#features)
- [Installation](#installation)


## Requirements
- Neovim 0.11 or higher

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
Plug 'mason-org/mason.nvim'
Plug 'mason-org/mason-lspconfig.nvim'
Plug 'stevearc/conform.nvim'
```
</details>
