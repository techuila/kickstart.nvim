-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

require('telescope').load_extension 'noice'

-- CUSTOM KEYMAP
vim.keymap.set('n', 'H', '^')
vim.keymap.set('n', 'L', '$')
vim.keymap.set('v', 'H', '^')
vim.keymap.set('v', 'L', '$')
vim.keymap.set('n', '<leader>gg', ':G<CR>', { desc = 'Git status' })
vim.keymap.set('n', '<M-H>', 'gT', { desc = 'Go to Previous tab' })
vim.keymap.set('n', '<M-L>', 'gt', { desc = 'Go to Next tab' })

return {
  {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true,
  },
  { 'https://tpope.io/vim/fugitive.git' },
  {
    'nvim-treesitter/nvim-treesitter-context',
    event = 'VeryLazy',
    opts = function()
      return { mode = 'cursor', max_lines = 3 }
    end,
  },
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      routes = {
        {
          filter = {
            event = 'notify',
            any = {
              { find = 'No information available' },
              { find = '%[Neo%-tree INFO%]' },
            },
          },
          opts = { skip = true },
        },
      },
      presets = {
        lsp_doc_border = true,
      },
    },
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
  },
  'f-person/git-blame.nvim',
  -- load the plugin at startup
  event = 'VeryLazy',
  -- Because of the keys part, you will be lazy loading this plugin.
  -- The plugin wil only load once one of the keys is used.
  -- If you want to load the plugin at startup, add something like event = "VeryLazy",
  -- or lazy = false. One of both options will work.
  opts = {
    -- your configuration comes here
    -- for example
    enabled = true, -- if you want to enable the plugin
    message_template = ' <author> • <date> • <summary> • <<sha>>', -- template for the blame message, check the Message template section for more options
    date_format = '%m-%d-%Y %H:%M:%S', -- template for the date, check Date format section for more options
    virtual_text_column = 1, -- virtual text start column, check Start virtual text at column section for more options
  },
  {
    'github/copilot.vim',
  },
}
