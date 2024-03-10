return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local t = require 'trouble'
    t.setup()

    vim.keymap.set('n', '<leader>xx', function()
      t.toggle()
    end, { desc = 'Toggle trouble' })
    vim.keymap.set('n', '<leader>xw', function()
      t.toggle 'workspace_diagnostics'
    end, { desc = 'Show workspace diagnostics' })
    vim.keymap.set('n', '<leader>xd', function()
      t.toggle 'document_diagnostics'
    end, { desc = 'Show document diagnostics' })
    vim.keymap.set('n', '<leader>xq', function()
      t.toggle 'quickfix'
    end, { desc = 'Show quickfixes' })
    vim.keymap.set('n', '<leader>xl', function()
      t.toggle 'loclist'
    end, { desc = 'Show locations list' })
    vim.keymap.set('n', 'gR', function()
      t.toggle 'lsp_references'
    end, { desc = 'Show LSP references' })
  end,
}
