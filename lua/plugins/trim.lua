return {
  'cappyzawa/trim.nvim',
  config = function()
    require('trim').setup {
      trim_last_line = false,
      patterns = {
        [[%s/\n*\%$/\r/]],
      },
    }
  end,
}

