return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim'
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup()

    local vim = vim
    local lsp = require('lspconfig')
    local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(args)
        local opts = { buffer = args.buf}
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', '<leader>lc', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', '<leader>lf', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<leader>ll', vim.diagnostic.open_float, opts)
        vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<leader>ls', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<leader>l[', vim.diagnostic.goto_prev, opts)
        vim.keymap.set('n', '<ledrer>l]', vim.diagnostic.goto_next, opts)
        client.server_capabilities.semanticTokensProvider = nil
      end
    })

    lsp.lua_ls.setup({
      capabilities = capabilities
    })

    lsp.intelephense.setup({
      capabilities = capabilities
    })

    lsp.tsserver.setup({
      capabilities = capabilities
    })

    lsp.bashls.setup({
      capabilities = capabilities
    })

    lsp.pyright.setup({
      capabilities = capabilities
    })

    lsp.cssls.setup({
      capabilities = capabilities
    })

    lsp.ltex.setup({
      capabilities = capabilities
    })

    lsp.html.setup({
      capabilities = capabilities
    })

    lsp.rust_analyzer.setup({
      capabilities = capabilities,
      settings = {
        ["rust-analyzer"] = {
          diagnostics = {
            enable = true,
            disabled = {'unresolved-proc-macro'},
            enableExperimental = true,
          }
        }
      }
    })

    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = true,
      severity_sort = true,
    })

    -- Diagnostics gutter icons per lspconfig wiki
    local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
  end
}
