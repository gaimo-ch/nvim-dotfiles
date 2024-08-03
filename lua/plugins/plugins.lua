return {
  {
    'lambdalisue/fern.vim',
    keys = {
      { "<C-f>", ":Fern . -reveal=% -drawer -toggle -width=40<CR>", desc = "toggle fern" },
    },
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
}
