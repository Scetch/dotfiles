return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    ensure_installed = {
        'c',
        'lua',
        'vim',
        'markdown',
        'markdown_inline',
        'rust',
        'json',
        'typescript',
        'tsx',
        'html',
        'yaml',
        'gitignore',
        'lua',
        'bash'
    },
    highlight = {
      enable = true
    },
  }
}
