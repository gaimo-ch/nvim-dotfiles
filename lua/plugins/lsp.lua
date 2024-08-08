return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('lspconfig').pyright.setup{}
      require('lspconfig').tsserver.setup{}
    end
  },
  
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',  -- LSP用の補完ソース
      'hrsh7th/cmp-buffer',    -- バッファ内の補完ソース
      'hrsh7th/cmp-path',      -- パスの補完ソース
      'hrsh7th/cmp-cmdline',   -- コマンドライン補完ソース
      'L3MON4D3/LuaSnip',      -- スニペットエンジン
      'onsails/lspkind.nvim',  -- LSPのアイコンを表示するためのプラグイン
    },
    config = function()
      local cmp = require('cmp')
      local lspkind = require('lspkind') -- LSPのアイコンを表示するためのプラグイン
      
      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-k>'] = cmp.mapping.select_prev_item(),
          ['<C-j>'] = cmp.mapping.select_next_item(),
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        }),
        sources = {
          { name = 'nvim_lsp' },
          { name = 'buffer' },
          { name = 'path' },
        },
        formatting = {
          format = lspkind.cmp_format({ with_text = true, maxwidth = 50 })
        }
      })
    end
  }
}

