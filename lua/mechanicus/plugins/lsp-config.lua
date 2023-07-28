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
    local lsp_defaults = lsp.util.default_config

    lsp_defaults.capabilities = vim.tbl_deep_extend(
      'force',
      lsp_defaults.capabilities,
      require('cmp_nvim_lsp').default_capabilities()
    )

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

    -- Language Servers with defaults only

    lsp.lua_ls.setup({})
    lsp.bashls.setup({})
    lsp.cssls.setup({})
    lsp.html.setup({})
    lsp.intelephense.setup({})
    lsp.ltex.setup({})
    lsp.pyright.setup({})
    lsp.tsserver.setup({})

    lsp.rust_analyzer.setup({
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
     virtual_text = false,
      severity_sort = true,
      float = {
        border = 'rounded',
        source = 'always',
      },
    })

    local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
    print("done")
  end
}
