local opt = vim.opt

vim.g.mapleader = ' '
vim.diagnostic.config {
    update_in_insert = true
}

vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('n', '<leader>P', '"+P')

opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = true

opt.cursorline = true
opt.termguicolors = true
