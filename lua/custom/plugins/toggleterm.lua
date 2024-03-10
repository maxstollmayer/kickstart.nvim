-- vim.keymap.set('n', '<leader>t', '<cmd>ToggleTerm<CR>', { desc = 'Toggle terminal' })
-- vim.keymap.set('n', '<leader>tj', '<cmd>ToggleTerm direction=horizontal<CR>', { desc = 'Toggle terminal below' })
-- vim.keymap.set('n', '<leader>tl', '<cmd>ToggleTerm size=40 direction=vertical<CR>', { desc = 'Toggle terminal to right' })

-- function _Lazygit_toggle()
--   local Terminal = require('toggleterm.terminal').Terminal
--
--   if not Lazygit then
--     Lazygit = Terminal:new {
--       cmd = 'lazygit',
--       dir = 'git_dir',
--       hidden = true,
--     }
--   end
--
--   Lazygit:toggle()
-- end

-- vim.keymap.set('n', '<leader>g', '<cmd>lua _Lazygit_toggle()<CR>', { desc = 'Toggle lazygit' })

return {
  'akinsho/toggleterm.nvim',
  opts = {},
  config = function()
    require('toggleterm').setup()

    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit = Terminal:new { cmd = 'lazygit', hidden = true }
    function _Lazygit_toggle()
      lazygit:toggle()
    end

    vim.keymap.set('n', '<leader>g', '<cmd>lua _Lazygit_toggle()<CR>', { desc = 'Toggle lazygit' })

    vim.keymap.set('n', '<leader>t', '<cmd>ToggleTerm<CR>', { desc = 'Toggle terminal' })
    vim.keymap.set('n', '<leader>tj', '<cmd>ToggleTerm direction=horizontal<CR>', { desc = 'Toggle terminal below' })
    vim.keymap.set('n', '<leader>tl', '<cmd>ToggleTerm size=40 direction=vertical<CR>', { desc = 'Toggle terminal to right' })
  end,
}
