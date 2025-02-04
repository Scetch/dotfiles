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
            'lua_ls',
            'ts_ls',
            'clangd',
            'cmake',
            'zls',
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
            capabilities = capabilities,
            settings = {
                ['rust-anayzer'] = {
                    cargo = {
                      targetDir = true,
                      features = "all",
                    },
                    check = {
                        command = "clippy",
                    },
                    files = {
                      excludeDirs = {
                          '.git',
                          '.direnv',
                          'target',
                          'js',
                          'node_modules',
                      },
                    },
                },
            },

        }
        lspconfig['lua_ls'].setup {
            capabilities = capabilities
        }
        lspconfig['ts_ls'].setup {
            capabilities = capabilities
        }
        lspconfig['clangd'].setup {
            capabilities = capabilities
        }
        lspconfig['cmake'].setup {
            capabilities = capabilities
        }
        lspconfig['zls'].setup {
            capabilities = capabilities
        }
      end
    },
}
