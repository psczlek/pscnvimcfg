return {
  {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',

        build = 'make',

        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },

      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },

    config = function()
      require('telescope').setup {
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
        },
      }

      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')

      local builtin = require('telescope.builtin')
      -- search help
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = 'Search help'})
      -- search keymaps
      vim.keymap.set('n', '<leader>fk', builtin.keymaps, {desc = 'Search keymaps'})
      -- search files
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = 'Search files'})
      -- search select telescope
      vim.keymap.set('n', '<leader>ss', builtin.builtin, {desc = 'Search select telescope'})
      -- search current word
      vim.keymap.set('n', '<leader>gs', builtin.grep_string, {desc = 'Search current word'})
      -- grep
      vim.keymap.set('n', '<leader>lg', builtin.live_grep, {desc = 'grep'})
      -- diagnostics
      vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {desc = 'Diagnostics'})
      -- search resume
      vim.keymap.set('n', '<leader>fr', builtin.resume, {desc = 'Search resume'})
      -- recent files
      vim.keymap.set('n', '<leader>s.', builtin.oldfiles, {desc = 'Recent files'})
      -- open buffers
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = 'Open buffers'})

      vim.keymap.set('n', '<leader>/', function()
        builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end, { desc = '[/] Fuzzily search in current buffer' })

      vim.keymap.set('n', '<leader>s/', function()
        builtin.live_grep {
          grep_open_files = true,
          prompt_title = 'Live Grep in Open Files',
        }
      end, { desc = '[S]earch [/] in Open Files' })

      vim.keymap.set('n', '<leader>sn', function()
        builtin.find_files { cwd = vim.fn.stdpath 'config' }
      end, { desc = '[S]earch [N]eovim files' })
    end
  }
}

