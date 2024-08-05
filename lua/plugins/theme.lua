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

      vim.cmd.colorscheme('rose-pine-moon')
    end
  },

  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
  },

  { 'ellisonleao/gruvbox.nvim', priority = 1000 , config = true, opts = ...},
}
