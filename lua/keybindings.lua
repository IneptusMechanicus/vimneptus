--------------------------
--     Keybindings      --
--------------------------
vim.g.mapleader = ' '

-- Main
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>q','<cmd>Bdelete<cr>')
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
vim.keymap.set('n', '<C-q>', '<cmd>qa<cr>')

-- Clipboard hotkeys
vim.keymap.set({'n', 'v', 'x'}, '<leader>c', '"+y')
vim.keymap.set({'n', 'v', 'x'}, '<C-c>', '<cmd>OSCYank<cr>')
vim.keymap.set({'n', 'x'}, '<leader>v', '"+p')

-- File explorer
vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<cr>', {desc = "Toggle File Explorere"})
vim.keymap.set('n', '<leader>o', '<cmd>Neotree focus<cr>', {desc = "Focus File Explorere"})

-- Tabline cycling --
vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>')
vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>')


-- Comments --

vim.keymap.set('n', '<C-/>', '<cmd>CommentToggle<cr>')
vim.keymap.set({'v', 'x'}, '<C-/>', '<cmd>\'<,\'>CommentToggle<cr>')
