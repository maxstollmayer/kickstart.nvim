return {
  'akinsho/toggleterm.nvim',
  opts = {},
  config = function()
    require('toggleterm').setup { start_in_insert = true }

    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new { cmd = 'lazygit', direction = 'float', hidden = true }
    function _Lazygit_toggle()
      lazygit:toggle()
    end

    vim.keymap.set('n', '<leader>gg', '<cmd>lua _Lazygit_toggle()<CR>', { desc = 'Toggle lazygit' })

    vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<CR>', { desc = 'Toggle terminal' })
    vim.keymap.set('n', '<leader>tj', '<cmd>ToggleTerm direction=horizontal<CR>', { desc = 'Toggle terminal below' })
    vim.keymap.set('n', '<leader>tl', '<cmd>ToggleTerm size=40 direction=vertical<CR>', { desc = 'Toggle terminal to right' })
    vim.keymap.set('n', '<leader>tf', '<cmd>ToggleTerm direction=float<CR>', { desc = 'Toggle floating terminal' })
  end,
}
