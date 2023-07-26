return {
  'folke/which-key.nvim',
  config = function()
    local wk = require('which-key')
    wk.register({
      a = 'Select All',
      y = 'Copy (clipboard)',
      Y = 'Copy (clipboard)',
      p = 'Paste (clipboard)',
      e = 'File Explorer',
      q = 'Close Buffer',
      w = 'Save File',
      d = {
        name = 'Debugger',
        b = 'Breakpoint Toggle',
        c = 'Continue',
        i = 'Step In',
        o = 'Step Out',
        t = 'Toggle',
        v = 'Step Over',
        x = 'Terminate'
      },
      t = {
        name = 'Telescope',
        b = 'Buffers',
        f = 'Find All Files',
        g = 'Git Files',
        h = 'Help',
        r = 'Live Grep'
      },
      h = {
        name = 'Harpoon',
        m = 'Mark File',
        t = 'Toggle UI',
      },
      l = {
        name = 'LSP Actions',
        a = 'Code Action',
        c = 'Go To Declaration',
        f = 'Go To Definntion',
        r = 'List References',
        l = 'Show Diagnostic Popup Under Cursor',
        i = 'Show Implementation',
        h = 'LSP Hover',
        s = 'Signature',
        ['['] = 'Diagnostic prev',
        [']'] = 'Diagnostic next'
      }
    }, { prefix = '<leader>' })
  end
}
