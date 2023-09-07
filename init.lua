vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.swapfile = false

local function start_fern()
  vim.cmd("Fern . -drawer -toggle -reveal=%")
end
vim.g['fern#renderer'] = 'nerdfont'
vim.api.nvim_set_var('fern#default_hidden', 1)
vim.api.nvim_set_keymap('n', '<C-f>', ':Fern . -drawer -toggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "<C-n>" : ""', {expr = true, noremap = false})
vim.g.moonlight_disable_background = true

require('plugins')
require('moonlight').set()
require('lualine').setup {
    options = {
      theme = 'nightfly'
    }
  }