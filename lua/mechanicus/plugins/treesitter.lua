return {
  {'nvim-treesitter/nvim-treesitter-context'},
  {'nvim-treesitter/playground'},
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('nvim-treesitter.configs').setup({
        highlight = { enable = true },
        ensure_installed = {
          'lua',
          'vim',
          'regex',
          'bash',
          'markdown',
          'markdown_inline'
        }
      })
    end
  }
}
