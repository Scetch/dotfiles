return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { 'BufReadPost', 'BufNewFile' },
  main = 'nvim-treesitter.configs',
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
        'bash',
        'cmake',
        'zig',
        'javascript',
        'css',
        'python',
    },
    highlight = {
      enable = true
    },
  }
}
