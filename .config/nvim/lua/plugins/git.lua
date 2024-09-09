return {
  'lewis6991/gitsigns.nvim',
  event = 'BufReadPre',
  opts = {
      signcolumn = true,
      current_line_blame = true,
      current_line_blame_opts = {
          delay = 100,
      },
  },
}
