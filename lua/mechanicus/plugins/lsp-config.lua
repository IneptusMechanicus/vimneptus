return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim'
  },
  config = function()
    require('mason').setup()

    local vim = vim
    local lsp = require('lspconfig')
    local mason_lspconfig = require('mason-lspconfig')
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(args)
        local opts = { buffer = args.buf}
        vim.lsp.get_client_by_id(args.data.client_id).server_capabilities.semanticTokensProvider = nil
        vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action, {desc = 'Code Action', buffer = args.buf})
        vim.keymap.set('n', '<leader>lc', vim.lsp.buf.declaration, {desc = 'Go To Declaration', buffer = args.buf})
        vim.keymap.set('n', '<leader>lf', vim.lsp.buf.definition, {desc = 'Go To Definition', buffer = args.buf})
        vim.keymap.set('n', '<leader>li', vim.lsp.buf.implementation, {desc = 'Go To Implementation', buffer = args.buf})
        vim.keymap.set('n', '<leader>ll', vim.diagnostic.open_float, {desc = 'Show Diagnostic Message', buffer = args.buf})
        vim.keymap.set('n', '<leader>lr', vim.lsp.buf.references, {desc = 'List References', buffer = args.buf})
        vim.keymap.set('n', '<leader>lh', vim.lsp.buf.hover, {desc = 'Hover', buffer = args.buf})
        vim.keymap.set('n', '<leader>ls', vim.lsp.buf.signature_help, {desc = 'Signature Help', buffer = args.buf})
        vim.keymap.set('n', '<leader>l[', vim.diagnostic.goto_prev, {desc = 'Previous Diagnostic', buffer = args.buf})
        vim.keymap.set('n', '<ledrer>l]', vim.diagnostic.goto_next, {desc = 'Next Diagnostic', buffer = args.buf})
      end
    })

    for key, item in pairs(mason_lspconfig.get_installed_servers()) do
      if item == "rust_analyzer" then
        lsp[item].setup({
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
      else
        lsp[item].setup({capabilities = capabilities})
      end
    end

    mason_lspconfig.setup();

    vim.diagnostic.config({
      virtual_text = false,
      severity_sort = true,
      float = {
        border = 'rounded',
        source = 'always',
      },
    })

    local signs = { Error = " ", Warn = " ", Hint = "󰌶 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end
    print("done")
  end
}
