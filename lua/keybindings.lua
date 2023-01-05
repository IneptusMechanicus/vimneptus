local bindings = vim.keymap
local g = vim.g
g.mapleader = ' '

-- Main
bindings.set('n', '<leader>q','<cmd>bdelete<cr>')
bindings.set('n', '<leader>w', '<cmd>write<cr>')
bindings.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
bindings.set('n', '<C-q>', '<cmd>qa<cr>')

-- Clipboard hotkeys
bindings.set({'n', 'v', 'x'}, '<leader>c', '"+y')
bindings.set({'n', 'v', 'x'}, '<leader>v', '"+p')
bindings.set({'n', 'v', 'x'}, '<C-c>', '<cmd>OSCYank<cr>')

-- File Manager --

bindings.set('n', '<leader>e', '<cmd>Telescope file_browser<cr>')

-- Tabline cycling --
bindings.set('n', '<S-Right>', '<cmd>bnext<cr>')
bindings.set('n', '<S-Left>', '<cmd>bprev<cr>')

-- Comments --
bindings.set('n', '<C-/>', '<cmd>CommentToggle<cr>')
bindings.set({'v', 'x'}, '<C-/>', '<cmd>\'<,\'>CommentToggle<cr>')

-- Moving lines --
bindings.set('n', '<C-Up>', 'ddkkp')
bindings.set('n', '<C-Down>', 'ddp')

-- Trouble Toggle --
bindings.set('n', '<leader>t', '<cmd>TroubleToggle<cr>')

-- Harpoon --
bindings.set('n', '<leader>r', function() require('harpoon.ui').toggle_quick_menu() end);
bindings.set('n', '<leader>s', function() require('harpoon.mark').add_file() end);
