return {
  'linux-cultist/venv-selector.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-telescope/telescope.nvim',
  },
  event = 'VeryLazy',
  opts = {
    name = '.venv',
    -- search = false,
    parents = 0,
    auto_refresh = true,
  },
}
-- vim.api.nvim_create_autocmd('VimEnter', {
--   desc = 'Auto select virtualenv when neovim opens',
--   pattern = '*',
--   callback = function()
--     local venv = vim.fn.finddir('.venv', vim.fn.getcwd() .. ';')
--     print(venv)
--     if venv ~= '' then
--       require('venv-selector').retrieve_from_cache()
--     end
--   end,
--   once = true,
-- })

