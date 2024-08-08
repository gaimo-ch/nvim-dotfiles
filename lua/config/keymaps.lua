local keymap = vim.keymap.set

keymap('n', '<C-f>', ':Fern . -reveal=% -drawer -toggle -width=40<CR>', { noremap = true, silent = true, desc = 'Toggle Fern' })

keymap('n', '<C-p>', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true, desc = 'Find files with Telescope' })

keymap('n', '<C-t>', '<cmd>ToggleTerm direction=horizontal<CR>', { noremap = true, silent = true, desc = 'Toggle terminal (horizontal) with ToggleTerm' })

-- toggleterm.nvim
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

