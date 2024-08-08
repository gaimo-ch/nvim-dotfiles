return {
 {
    'lambdalisue/fern.vim',
    dependencies = {
      { 'lambdalisue/nerdfont.vim' },
      {
        'lambdalisue/fern-renderer-nerdfont.vim',
        config = function()
          vim.g['fern#renderer'] = "nerdfont"
          vim.api.nvim_set_var('fern#default_hidden', 1)
        end
      },
    },
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'nord',
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch'},
          lualine_c = {'filename'},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'},
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = {'filename'},
          lualine_x = {'location'},
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        extensions = {'fugitive', 'nvim-tree'},
      }
    end
  },
  {
    'github/copilot.vim'
  },
  {
    'arcticicestudio/nord-vim',
    config = function()
      vim.cmd('colorscheme nord')
    end
  },
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },
    {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('diffview').setup {}
    end,
    keys = {
      { "<leader>gd", ":DiffviewOpen<CR>", desc = "Open diffview" },
      { "<leader>gc", ":DiffviewClose<CR>", desc = "Close diffview" },
    },
  },
  {
    'akinsho/toggleterm.nvim', version = "*", config = true,
  },
}

