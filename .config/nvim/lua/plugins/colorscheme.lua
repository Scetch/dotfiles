return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    opts = {
        flavour = 'mocha',
        integrations = {
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            treesitter = true,
        }
    },
    config = function()
      vim.cmd([[colorscheme catppuccin]])
    end
  },
}
