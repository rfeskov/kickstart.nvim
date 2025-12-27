return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  dependencies = { 'saghen/blink.cmp' },
  config = function()
    require('nvim-autopairs').setup {
      check_ts = true, -- enable treesitter
      ts_config = {
        lua = { 'string' }, -- don't add pairs in lua string treesitter nodes
        javascript = { 'template_string' },
      },
      map_bs = true, -- map backspace to delete pairs
      enable_check_bracket_line = false,
    }
  end,
}
