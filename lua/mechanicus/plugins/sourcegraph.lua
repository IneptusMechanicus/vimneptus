return {
  'sourcegraph/sg.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function ()
    require('sg').setup();
    vim.keymap.set('n', '<leader>sc', '<cmd>CodyToggle<cr>', {desc = 'Toggle'})
  end
}
