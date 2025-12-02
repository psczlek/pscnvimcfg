return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      require('gruvbox').setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = false,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true,
        contrast = 'hard',
        palette_overrides = {},
        overrides = {
          ['@punctuation.bracket'] = { fg = '#e1d2ab' },
          ['@punctuation.delimiter'] = { fg = '#e1d2ab' },
          ['@punctuation.special'] = { fg = '#e1d2ab' },
          ['@punctuation'] = { fg = '#e1d2ab' },
        },
        dim_inactive = false,
        transparent_mode = true,
      })

      vim.cmd.colorscheme('gruvbox')
    end,
  },
}
