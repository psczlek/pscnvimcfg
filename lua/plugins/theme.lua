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
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require('rose-pine').setup({
        styles = {
          bold = false,
          italic = false,
          transparency = true,
        },
      })
      vim.cmd("colorscheme rose-pine-moon")
    end
  },
}
