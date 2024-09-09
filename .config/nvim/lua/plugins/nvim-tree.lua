return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup({
      update_focused_file = {
          enable = true
      },
      renderer = {
          root_folder_label = false,
          icons = {
            show = {
                file = false
            }
          }
      }
    })

    local keymap = vim.keymap

    keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })
    keymap.set('n', '<leader>ec', '<cmd>NvimTreeCollapse<CR>', { desc = 'Collapse file explorer' })
    keymap.set('n', '<leader>er', '<cmd>NvimTreeRefresh<CR>', { desc = 'Refresh file explorer' })
  end
}
