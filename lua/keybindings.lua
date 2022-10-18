local binding = vim.keymap
local g = vim.g
--------------------------
--     Keybindings      --
--------------------------
g.mapleader = ' '

-- Main
binding.set('n', '<leader>w', '<cmd>write<cr>')
binding.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
binding.set('n', '<leader>q','<cmd>Bdelete<cr>')
binding.set('n', '<C-q>', '<cmd>qa<cr>')

-- Clipboard hotkeys
binding.set({'n', 'v', 'x'}, '<leader>c', '"+y')
binding.set({'n', 'v', 'x'}, '<C-c>', '<cmd>OSCYank<cr>')
binding.set({'n', 'x'}, '<leader>v', '"+p')

-- File explorer
binding.set('n', '<leader>e', '<cmd>Neotree toggle<cr>', {desc = "Toggle File Explorere"})
binding.set('n', '<leader>o', '<cmd>Neotree focus<cr>', {desc = "Focus File Explorere"})

-- Tabline cycling --
binding.set('n', '<S-Right>', '<cmd>BufferLineCycleNext<cr>')
binding.set('n', '<S-Left>', '<cmd>BufferLineCyclePrev<cr>')

-- Comments --

binding.set('n', '<C-/>', '<cmd>CommentToggle<cr>')
binding.set({'v', 'x'}, '<C-/>', '<cmd>\'<,\'>CommentToggle<cr>')

-- Moving lines --

binding.set('n', '<C-Up>', 'ddkkp')
binding.set('n', '<C-Down>', 'ddp')

binding.set('x', '<C-Up>', 'dkkp')
binding.set('x', '<C-Down>', 'dp')
-- Trouble Toggle --

binding.set('n', '<leader>t', '<cmd>TroubleToggle<cr>')
