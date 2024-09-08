return {
    {
        'williamboman/mason.nvim',
        init = function()
            require('mason').setup()
        end
    },
    {
      'williamboman/mason-lspconfig.nvim',
      opts = {
        ensure_installed = {
            'rust_analyzer',
            'lua_ls'
        }
      }
    },
    {
      'neovim/nvim-lspconfig',
      dependencies = {
        'cmp-nvim-lsp'
      },
      config = function()
        local lspconfig = require('lspconfig')
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        lspconfig['rust_analyzer'].setup {
            capabilities = capabilities
        }
        lspconfig['lua_ls'].setup {
            capabilities = capabilities
        }
      end
    },
}
