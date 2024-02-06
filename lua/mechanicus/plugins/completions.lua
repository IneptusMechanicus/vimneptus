return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    "rafamadriz/friendly-snippets"
  },
  config = function ()
    local vim = vim
    local cmp = require('cmp')
    require("luasnip.loaders.from_vscode").lazy_load()

    local icons = {
      Class = "",
      Color = "",
      Constant = "",
      Constructor = "",
      Enum = "",
      EnumMember = "",
      Field = "",
      File = "",
      Folder = "",
      Function = "󰡱",
      Interface = "",
      Keyword = "",
      Method = "",
      Module = "",
      Property = "",
      Snippet = "",
      Struct = "",
      Text = "",
      Unit = "",
      Value = "",
      Variable = "",
    }

    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-o>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
      sources = cmp.config.sources({
        {name = 'path'},
        {name = 'nvim_lsp', keyword_length = 1},
        {name = 'buffer', keyword_length = 3},
        {name = 'luasnip', keyword_length = 2},
      }),
      formatting = {
        format = function(entry, vim_item)
          -- Kind icons
          vim_item.kind = string.format('%s', icons[vim_item.kind]) -- This concatonates the icons with the name of the item kind
          -- Source
          vim_item.menu = ({
            buffer = "",
            nvim_lsp = "",
            luasnip = "",
            nvim_lua = "",
          })[entry.source.name]
          return vim_item
        end
      }
    })
  end
}
