vim.keymap.set('n', '<C-left>', function()
  return require('smart-splits').resize_left(1)
end, { desc = 'Resize window to left' })
vim.keymap.set('n', '<C-down>', function()
  return require('smart-splits').resize_down(1)
end, { desc = 'Resize window down' })
vim.keymap.set('n', '<C-up>', function()
  return require('smart-splits').resize_up(1)
end, { desc = 'Resize window up' })
vim.keymap.set('n', '<C-right>', function()
  return require('smart-splits').resize_right(1)
end, { desc = 'Resize window to right' })

vim.keymap.set('i', '<C-left>', function()
  return require('smart-splits').resize_left(1)
end, { desc = 'Resize window to left' })
vim.keymap.set('i', '<C-down>', function()
  return require('smart-splits').resize_down(1)
end, { desc = 'Resize window down' })
vim.keymap.set('i', '<C-up>', function()
  return require('smart-splits').resize_up(1)
end, { desc = 'Resize window up' })
vim.keymap.set('i', '<C-right>', function()
  return require('smart-splits').resize_right(1)
end, { desc = 'Resize window to right' })

vim.keymap.set('t', '<C-left>', function()
  return require('smart-splits').resize_left(1)
end, { desc = 'Resize window to left' })
vim.keymap.set('t', '<C-down>', function()
  return require('smart-splits').resize_down(1)
end, { desc = 'Resize window down' })
vim.keymap.set('t', '<C-up>', function()
  return require('smart-splits').resize_up(1)
end, { desc = 'Resize window up' })
vim.keymap.set('t', '<C-right>', function()
  return require('smart-splits').resize_right(1)
end, { desc = 'Resize window to right' })

return {
  'mrjones2014/smart-splits.nvim',
}
