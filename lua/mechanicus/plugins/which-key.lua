return {
  'folke/which-key.nvim',
  config = function()
    local wk = require('which-key')
    wk.add({
      {'<leader>d', group = 'Debugger'},
      {'<leader>h', group = 'Harpoon'},
      {'<leader>l', group = 'LSP'},
      {'<leader>s', group = 'Sourcegraph'},
      {'<leader>t', group = 'Telescope'},
    })
  end
}
