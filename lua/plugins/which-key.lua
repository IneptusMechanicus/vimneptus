return {
  'folke/which-key.nvim',
  config = function()
    local wk = require('which-key')
    wk.register({
      a = 'Select All',
      y = 'Copy (clipboard)',
      p = 'Paste (clipboard)',
      d = 'Cut (clipboard)',
      e = 'File Explorer',
      q = 'Close Buffer',
      w = 'Save File',
      t = {
        name = 'Telescope',
        b = 'Buffers',
        f = 'Find All Files',
        g = 'Git Files',
        r = 'Live Grep',
        h = 'Help'
      },
      h = {
        name = 'Harpoon',
        m = 'Mark File',
        t = 'Toggle UI',
      }
    }, { prefix = '<leader>' })

    wk.register({
      g = {
        d = 'Go To Definntion',
        D = 'Go To Declaration',
        r = 'List References',
        l = 'Show Diagnostic Popup Under Cursor',
      },
    })
  end
}
