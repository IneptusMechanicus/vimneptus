local bindings = vim.keymap
vim.g.mapleader = ' '

-- Main
bindings.set('n', '<leader>q','<cmd>bdelete<cr>')
bindings.set('n', '<leader>w', '<cmd>write<cr>')
bindings.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
bindings.set('n', '<C-q>', '<cmd>qa<cr>')

-- Clipboard hotkeys
bindings.set({'n', 'v'}, '<leader>y', [["+y]])
bindings.set('n', '<leader>Y', [["+Y]])
bindings.set({'n', 'v'}, 'x', [["_d]])
bindings.set('x', '<leader>p', [["_dP]])

-- Vertical movements
bindings.set('n', '<C-d>', '<C-d>zz')
bindings.set('n', '<C-u>', '<C-u>zz')

-- File Manager --

-- Buffer cycling --
bindings.set('n', '<S-Right>', '<cmd>bnext<cr>')
bindings.set('n', '<S-Left>', '<cmd>bprev<cr>')

-- Split resizing
bindings.set('n', '<C-Right>', '<C-w>>')
bindings.set('n', '<C-Left>', '<C-w><')
bindings.set('n', '<C-Up>', '<C-w>+')
bindings.set('n', '<C-Down>', '<C-w>-')

-- Moving lines --
bindings.set('v', '<S-Up>', ':m \'<-2<CR>gv=gv')
bindings.set('v', '<S-Down>', ':m \'>+1<CR>gv=gv')

-- Treesitter --
bindings.set('n', 'gt', '<cmd>TSHighlightCapturesUnderCursor<cr>')
