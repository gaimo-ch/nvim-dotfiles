local keymap = vim.keymap.set
-- Fern
keymap('n', '<C-f>', ':Fern . -reveal=% -drawer -toggle -width=40<CR>', { noremap = true, silent = true, desc = 'Toggle Fern' })

keymap('n', '<C-t>', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true, desc = 'Find files with Telescope' })
