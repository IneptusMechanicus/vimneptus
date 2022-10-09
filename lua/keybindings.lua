local binding = vim.keymap
local g = vim.g
--------------------------
--     Keybindings      --
--------------------------
g.mapleader = ' '

-- Main
binding.set('n', '<leader>w', '<cmd>write<cr>')
binding.set('n', '<leader>q','<cmd>Bdelete<cr>')
binding.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
binding.set('n', '<C-q>', '<cmd>qa<cr>')

-- Clipboard hotkeys
binding.set({'n', 'v', 'x'}, '<leader>c', '"+y')
binding.set({'n', 'v', 'x'}, '<C-c>', '<cmd>OSCYank<cr>')
binding.set({'n', 'x'}, '<leader>v', '"+p')

-- File explorer
binding.set('n', '<leader>e', '<cmd>Neotree toggle<cr>', {desc = "Toggle File Explorere"})
binding.set('n', '<leader>o', '<cmd>Neotree focus<cr>', {desc = "Focus File Explorere"})

-- Tabline cycling --
binding.set('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>')
binding.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>')


-- Comments --

binding.set('n', '<C-/>', '<cmd>CommentToggle<cr>')
binding.set({'v', 'x'}, '<C-/>', '<cmd>\'<,\'>CommentToggle<cr>')


-- Trouble Toggle --

binding.set('n', '<leader>t', '<cmd>TroubleToggle<cr>')
