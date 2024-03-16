return {
  'linux-cultist/venv-selector.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-telescope/telescope.nvim',
  },
  event = 'VeryLazy',
  opts = {
    name = '.venv',
    search = false,
    auto_refresh = true,
  },
}
