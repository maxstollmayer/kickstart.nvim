return {
  'nvim-treesitter/nvim-treesitter-context',
  dependencies = { 'nvim-treesitter' },
  config = function()
    require('treesitter-context').setup {
      max_lines = 3,
    }

    vim.keymap.set('n', 'cu', function()
      require('treesitter-context').go_to_context(vim.v.count1)
    end, { desc = 'Go up in context', silent = true })
  end,
}
