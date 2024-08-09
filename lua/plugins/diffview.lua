return {
  'sindrets/diffview.nvim',
  requires = 'nvim-lua/plenary.nvim',
  config = function()
    require('diffview').setup {}
  end,
  keys = {
    { "<leader>gd", ":DiffviewOpen<CR>", desc = "Open diffview" },
    { "<leader>gc", ":DiffviewClose<CR>", desc = "Close diffview" },
  }
}

