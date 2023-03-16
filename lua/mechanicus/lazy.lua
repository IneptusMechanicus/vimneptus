require('lazy').setup({
  -- UI Stuff --
  {'goolord/alpha-nvim', dependencies = 'kyazdani42/nvim-web-devicons'},
  {'folke/which-key.nvim'},
  {'folke/noice.nvim',
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
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
  {'nvim-treesitter/playground'},

  -- LSP and Autocompletion
  {'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
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
