return {'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
      -- LSP Support
      'neovim/nvim-lspconfig',
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
    },
    config = function()
      local vim = vim
      local lsp = require('lsp-zero')
      lsp.preset('recommended')
      lsp.on_attach(function(client, bufnr)
        vim.keymap.set('n', 'ga', vim.lsp.buf.code_action, {buffer = bufnr})
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {buffer = bufnr})
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {buffer = bufnr})
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {buffer = bufnr})
        vim.keymap.set('n', 'gl', vim.diagnostic.open_float, {buffer = bufnr})
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, {buffer = bufnr})
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer = bufnr})
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {buffer = bufnr})
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {buffer = bufnr})
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {buffer = bufnr})
      end)
      lsp.setup()
    end
  }
