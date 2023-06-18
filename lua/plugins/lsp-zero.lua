local vim = vim
return {'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  dependencies = {
    -- LSP Support
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    -- Snippets
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
  },
  config = function()
    local lsp_zero = require('lsp-zero')
    lsp_zero.preset('recommended')
    lsp_zero.on_attach(function(client, bufnr)
      client.server_capabilities.semanticTokensProvider = nil
      vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, {buffer = bufnr})
      vim.keymap.set('n', '<leader>lc', vim.lsp.buf.declaration, {buffer = bufnr})
      vim.keymap.set('n', '<leader>lf', vim.lsp.buf.definition, {buffer = bufnr})
      vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation, {buffer = bufnr})
      vim.keymap.set('n', '<leader>ll', vim.diagnostic.open_float, {buffer = bufnr})
      vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references, {buffer = bufnr})
      vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, {buffer = bufnr})
      vim.keymap.set('n', '<leader>ls', vim.lsp.buf.signature_help, {buffer = bufnr})
      vim.keymap.set('n', '<leader>l[', vim.diagnostic.goto_prev, {buffer = bufnr})
      vim.keymap.set('n', '<ledrer>l]', vim.diagnostic.goto_next, {buffer = bufnr})
    end)
    local lsp = require('lspconfig')
    lsp.rust_analyzer.setup {
      settings = {
        ["rust-analyzer"] = {
          diagnostics = {
            enable = true,
            disabled = {'unresolved-proc-macro'},
            enableExperimental = true,
          }
        }
      }
    }
    lsp_zero.setup()
  end
}
