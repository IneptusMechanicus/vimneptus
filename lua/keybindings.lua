--------------------------
--     Keybindings      --
--------------------------
vim.g.mapleader = ' '


-- Main
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>q','<cmd>Bdelete<cr>')
vim.keymap.set('n', '<C-q>', '<cmd>qa<cr>')

-- Clipboard hotkeys
vim.keymap.set({'n', 'x'}, '<leader>c', '"+y')
vim.keymap.set({'n', 'x'}, '<leader>v', '"+p')

-- File explorer
vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<cr>', {desc = "Toggle File Explorere"})
vim.keymap.set('n', '<leader>o', '<cmd>Neotree focus<cr>', {desc = "Focus File Explorere"})

-- Tabline cycling --
vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>')
vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>')
