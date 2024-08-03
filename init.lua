vim.o.wrap = false
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.swapfile = false
vim.opt.clipboard = 'unnamedplus'  -- クリップボード設定

local function start_fern()
  vim.cmd("Fern . -drawer -toggle -reveal=%")
end
vim.g['fern#renderer'] = 'nerdfont'
vim.api.nvim_set_var('fern#default_hidden', 1)
vim.api.nvim_set_keymap('n', '<C-f>', ':Fern . -drawer -toggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "<C-n>" : ""', {expr = true, noremap = false})
vim.g.moonlight_disable_background = true

require('plugins')
require('lualine').setup {
    options = {
      theme = 'nord'
    }
  }

vim.cmd('colorscheme nord')

-- Set encoding to UTF-8
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- Set the termguicolors option for better color support
vim.opt.termguicolors = true

-- Set the fileencodings option to automatically detect encoding
vim.opt.fileencodings = { 'utf-8', 'sjis', 'euc-jp', 'latin' }

-- Set the default language environment to Japanese
vim.cmd('language messages C')

-- Set the font for GUI (if you are using a GUI version of Neovim like nvim-qt or Neovide)
if vim.fn.has('gui_running') then
    vim.opt.guifont = 'FiraCode Nerd Font:h14'
end

-- Split window
vim.api.nvim_set_keymap('n', 'ss', ':split<CR><C-w>w', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'sv', ':vsplit<CR><C-w>w', { noremap = true, silent = true })

-- Move window
vim.api.nvim_set_keymap('n', '<Space>', '<C-w>w', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 's<left>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 's<up>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 's<down>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 's<right>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'sh', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'sk', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'sj', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'sl', '<C-w>l', { noremap = true, silent = true })

-- Resize window
vim.api.nvim_set_keymap('n', '<C-w><left>', '<C-w><', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w><right>', '<C-w>>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w><up>', '<C-w>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w><down>', '<C-w>-', { noremap = true, silent = true })

-- イタリックを無効にするハイライトグループの設定
vim.cmd([[
highlight Comment cterm=NONE gui=NONE
highlight Function cterm=NONE gui=NONE
highlight Identifier cterm=NONE gui=NONE
highlight Statement cterm=NONE gui=NONE
highlight PreProc cterm=NONE gui=NONE
highlight Type cterm=NONE gui=NONE
highlight Special cterm=NONE gui=NONE
highlight Underlined cterm=NONE gui=NONE
highlight Todo cterm=NONE gui=NONE
highlight String cterm=NONE gui=NONE
highlight Character cterm=NONE gui=NONE
highlight Number cterm=NONE gui=NONE
highlight Boolean cterm=NONE gui=NONE
highlight Float cterm=NONE gui=NONE
]])
