# <p align="center">Mechanicus NVim</p>

<p align="center">
<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/IneptusMechanicus/neovim-config?style=for-the-badge">
<img alt="GitHub" src="https://img.shields.io/github/license/IneptusMechanicus/neovim-config?style=for-the-badge">
</p>
My personal neovim config, complete with colorscheme. I mostly maintain it for myself. The config will be updated to accomodate any breaking changes made to the used plugins. Use at your own risk. Send a PR if you have any ideas. 

---

![img1](https://user-images.githubusercontent.com/8884770/196778195-20b6ca0d-a95c-4882-86c5-30d444927b2c.png)
![img2](https://user-images.githubusercontent.com/8884770/196778193-b9355648-ab9f-43d4-9c33-aebe20cb9b40.png)
![img3](https://user-images.githubusercontent.com/8884770/196778190-7dba637e-7c32-4ada-9eb9-a1e9a3427058.png)

# Requirements 
* [Neovim 0.8+](https://github.com/neovim/neovim/releases/latest)
* [Nerd Fonts](https://www.nerdfonts.com/font-downloads) - I personally use FiraCode for regular and bold and Code New Roman for italic (since FiraCode doesn't have italics)

# Installation

Simply clone the repo into your nvim configuration folder.

```
git clone https://github.com/IneptusMechanicus/neovim-config.git .config/nvim
```
Once the download is complete, simply run Neovim. The config is written so that it will install all necesarry plugins on first startup. The `alpha` dashborad won't appear until the next time you start neovim.


# Plugins used
* Basic UI and Layout
  * [Bufferline](https://github.com/akinsho/bufferline.nvim) - Tabs for open buffers/files
  * [Lualine](https://github.com/nvim-lualine/lualine.nvim) - Status line
  * [NeoTree](https://github.com/nvim-neo-tree/neo-tree.nvim) - File tree explorer
  * [Bufdelete](https://github.com/famiu/bufdelete.nvim) - Quitting individual buffers while maintaining the layout with NeoTree
