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
      -- routes = {
      --   filter = { event = 'notify', find = 'No information available' },
      --   opts = { skip = true },
      -- },
      presets = {
        lsp_doc_border = true,
      },
    },
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
  },
  {
    'github/copilot.vim',
  },
}
