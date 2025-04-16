vim.g.mapleader = ' '
vim.diagnostic.config {
    update_in_insert = true
}

vim.keymap.set('n', '<leader>s', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>')
vim.keymap.set('n', '<leader>c', '<cmd>lua vim.lsp.buf.code_action()<CR>')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>');

vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

opt.cursorline = true
opt.termguicolors = true

vim.opt.clipboard = 'unnamedplus'

vim.opt.scrolloff = 10
