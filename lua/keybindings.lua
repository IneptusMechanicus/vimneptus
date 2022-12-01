local binding = vim.keymap
local g = vim.g
g.mapleader = ' '

-- Main
binding.set('n', '<leader>q','<cmd>bdelete<cr>')
binding.set('n', '<leader>w', '<cmd>write<cr>')
binding.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
binding.set('n', '<C-q>', '<cmd>qa<cr>')

-- Clipboard hotkeys
binding.set({'n', 'v', 'x'}, '<leader>c', '"+y')
binding.set({'n', 'v', 'x'}, '<C-c>', '<cmd>OSCYank<cr>')
binding.set({'n', 'x'}, '<leader>v', '"+p')

-- File Manager --

binding.set('n', '<leader>e', '<cmd>Explore<cr>')

-- Tabline cycling --
binding.set('n', '<S-Right>', '<cmd>bnext<cr>')
binding.set('n', '<S-Left>', '<cmd>bprev<cr>')

-- Comments --
binding.set('n', '<C-/>', '<cmd>CommentToggle<cr>')
binding.set({'v', 'x'}, '<C-/>', '<cmd>\'<,\'>CommentToggle<cr>')

-- Moving lines --
binding.set('n', '<C-Up>', 'ddkkp')
binding.set('n', '<C-Down>', 'ddp')

-- Trouble Toggle --
binding.set('n', '<leader>t', '<cmd>TroubleToggle<cr>')

-- Harpoon --
binding.set('n', '<leader>r', function() require('harpoon.ui').toggle_quick_menu() end);
binding.set('n', '<leader>s', function() require('harpoon.mark').add_file() end);
