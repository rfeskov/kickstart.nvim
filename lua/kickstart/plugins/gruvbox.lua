return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  opts = {
    terminal_colors = true,
    -- Simplified Gruvbox palette structure
    -- contrast = "soft",
    palette_overrides = {
      dark0 = '#3c3836', -- deepest background (used for Normal)
      dark1 = '#282828', -- lighter background (statusline, folds, etc.)
      dark2 = '#32302f',
      dark3 = '#3c3836',
      dark4 = '#0d2a34',

      light0 = '#fbf6e4', -- lightest (used for Light mode background)
      light1 = '#ebdbb2',
      light2 = '#d5c4a1',
      light3 = '#bdae93',
      light4 = '#d79a22',

      -- Accent colors (normal + bright)
      faded_red = '#d65d0e',
      bright_red = '#ec6e2d',

      faded_green = '#689c6a',
      bright_green = '#68ba46',

      faded_yellow = '#d79a22',
      bright_yellow = '#f2ad3c',

      faded_blue = '#446ebe',
      bright_blue = '#4385e5',

      faded_purple = '#8a55a5',
      bright_purple = '#6c70be',

      faded_aqua = '#458588',
      bright_aqua = '#60b3ba',
    },
  },
  config = function(_, opts)
    require('gruvbox').setup(opts)
    vim.o.background = 'light'
    vim.cmd.colorscheme 'gruvbox'
  end,
}
