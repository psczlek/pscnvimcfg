return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',

    config = function()
      require('rose-pine').setup({
        styles = {
          bold = false,
          italic = false,
          transparency = true,
        },

        -- terminal's background = #1f1f1f
        highlight_groups = {
          ColorColumn = {bg = '#404040'},
          LineNr = {fg = '#606060'},
          StatusLine = {fg = '#606060'}
        },
      })
    end
  },

  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('tokyonight').setup()
    end
  },

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,

    config = function()
      require('catppuccin').setup({
        transparent_background = true,
      })
    end
  },

  {
    'projekt0n/github-nvim-theme',
    config = function()
      require('github-theme').setup({
        options = {
          transparent = true,
        }
      })
    end
  },

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

      vim.cmd.colorscheme('embark-theme')
    end,
  },
}
