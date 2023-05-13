# <p align="center">VimNeptus</p>

<p align="center">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/IneptusMechanicus/neovim-config?style=for-the-badge">
    <img alt="GitHub" src="https://img.shields.io/github/license/IneptusMechanicus/neovim-config?style=for-the-badge">
</p>
My personal neovim config, complete with colorscheme. I mostly maintain it for myself. The config will be updated to accomodate any breaking changes made to the used plugins. Use at your own risk. Send a PR if you have any ideas. 

---

<p align="left">
    <img src="img/img-1.png" style="width: 48%; height: auto;">
    <img src="img/img-2.png" style="width: 48%; height: auto;">
</p>
<p align="left">
    <img src="img/img-3.png" style="width: 48%; height: auto;">
    <img src="img/img-4.png" style="width: 48%; height: auto;">
</p>
---

# Requirements

## Base
* [Neovim](https://github.com/neovim/neovim/releases/latest) - The latest stable version
* [Nerd Fonts](https://www.nerdfonts.com/font-downloads) - I personally use FiraCode for regular and bold and Code New Roman for italic (since FiraCode doesn't have italics)

## Telescope
* [ripgrep](https://github.com/BurntSushi/ripgrep) - Telescope uses ripgrep as a dependency for Live Grep Searching through files. For Linux, it should be present in the default package repos.

## Debuggers
This config have an nvim-dap setups for PHP, Rust, GDScript and Nvim Lua.
For further info on the setup and required packages, look at the [Debugger Adapter Installation Guide](https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation) for `nvim-dap`

---

# Installation

Simply clone the repo into your nvim configuration folder.

### Linux:

```bash
git clone https://github.com/IneptusMechanicus/neovim-config.git .config/nvim
```
### Windows

No clue. Who uses Neovim on Windows anyway?

### MacOS

I've only ever touched an apple device once.

---

Once the download is complete, simply run Neovim. The config is written so that it will install all necesarry plugins on first startup. The `alpha` dashboard won't appear until the next time you start neovim.

---

# Plugins used

* Package Manager
  * [Lazy.nvim](https://github.com/folke/lazy.nvim)
* Basic UI and Layout
  * [Alpha](https://github.com/goolord/alpha-nvim) - Welcome Screen
  * [Lualine](https://github.com/nvim-lualine/lualine.nvim) - Status line
  * [WhichKey](https://github.com/folke/which-key.nvm) - Status line
  * [Color Scheme](https://github.com/IneptusMechanicus/mechanicus.nvim) - Status line
  * [Colorizer](https://github.com/NvChad/nvim-colorizer.lua) - Colorize hex values
* File Management
  * [Telescope](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy Finder
    * [Telescope File Browser](https://github.com/nvim-telescope/telescope-file-browser.nvim) - File Browser
    * [Telescope DAP](https://github.com/nvim-telescope/telescope-dap.nvim) - Integrating DAP Client with Telescope
  * [Harpoon](https://github.com/ThePrimeagen/harpoon) - File Quicklist
* Coding stuff
  * [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax Highlighting
  * [LSP Zero](https://github.com/VonHeikemen/lsp-zero.nvim) - Easy LSP setup
  * [Nvim DAP](https://github.com/mfussenegger/nvim-dap) - DAP Client for debugging
    * [Nvim DAP UI](https://github.com/rcarriga/nvim-dap-ui) - UI tools for DAP inside Neovim
    * [One small step for Vim kind](https://github.com/jbyuki/one-small-step-for-vimkind) - Debug adapter for Lua inside Neovim
  * [Nvim Comment](https://github.com/terrortylor/nvim-comment) - Hotkey commenting
  * [Autopairs](https://github.com/windwp/nvim-autopairs) - Automatic parentheses
