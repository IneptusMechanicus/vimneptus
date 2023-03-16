local bindings = vim.keymap
local g = vim.g
g.mapleader = ' '

-- Main
bindings.set('n', '<leader>q','<cmd>bdelete<cr>')
bindings.set('n', '<leader>w', '<cmd>write<cr>')
bindings.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
bindings.set('n', '<C-q>', '<cmd>qa<cr>')

-- Clipboard hotkeys
bindings.set("x", "<leader>p", [["_dP]])

bindings.set({"n", "v"}, "<leader>y", [["+y]])
bindings.set("n", "<leader>Y", [["+Y]])
bindings.set({"n", "v"}, "x", [["_d]])
bindings.set("x", "<leader>p", [["_dP]])

-- Vertical movements
bindings.set("n", "<C-d>", "<C-d>zz")
bindings.set("n", "<C-u>", "<C-u>zz")

bindings.set("n", "<C-t>", "<cmd>ToggleTerm<cr>")
bindings.set("t", "<C-t>", "<cmd>ToggleTerm<cr>")

-- File Manager --
bindings.set('n', '<leader>e', '<cmd>Telescope file_browser<cr>')

-- Tabline cycling --
bindings.set('n', '<S-Right>', '<cmd>bnext<cr>')
bindings.set('n', '<S-Left>', '<cmd>bprev<cr>')

-- Moving lines --
bindings.set('v', '<S-Up>', ":m '<-2<CR>gv=gv")
bindings.set('v', '<S-Down>', ":m '>+1<CR>gv=gv")

-- Harpoon --
bindings.set('n', '<leader>ht', function() require('harpoon.ui').toggle_quick_menu() end);
bindings.set('n', '<leader>hm', function() require('harpoon.mark').add_file() end);

-- Treesitter --
bindings.set('n', '<leader>gt', '<cmd>TSHighlightCapturesUnderCursor<cr>')
