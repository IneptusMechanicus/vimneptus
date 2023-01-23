require('options')
require('keybindings')
require('autocmd')

local vim = vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    -- UI Stuff --
    {'goolord/alpha-nvim', dependencies = 'kyazdani42/nvim-web-devicons'},
    {'folke/which-key.nvim'},

    -- Color scheme --
    {'IneptusMechanicus/mechanicus.nvim'},

    -- Clipboard and popups utils --
    {'nvim-lualine/lualine.nvim'},

    -- Coding quick commands --
    {'terrortylor/nvim-comment'},
    {'windwp/nvim-autopairs'},

    -- Syntax and hex colours
    {'NvChad/nvim-colorizer.lua'},
    {'nvim-treesitter/nvim-treesitter'},

    -- LSP and Autocompletion
    {'VonHeikemen/lsp-zero.nvim',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        },
    },

    -- Advanced file stuff
    {'ThePrimeagen/harpoon', dependencies = 'nvim-lua/plenary.nvim'},
    {'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope-file-browser.nvim'
        },
    },
})

local install_path = vim.fn.stdpath('data') .. '/lazy/mechanicus.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) <= 0 then
	vim.cmd.colorscheme("mechanicus")
end
