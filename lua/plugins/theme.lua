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

        highlight_groups = {
          ColorColumn = {bg = '#404040'},
          LineNr = {fg = '#606060'},
          StatusLine = {fg = '#606060'}
        },
      })

      vim.cmd.colorscheme('rose-pine-moon')
    end
  },

  -- ...
}
