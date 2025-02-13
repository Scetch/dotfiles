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
        'mrcjkb/rustaceanvim',
        version = '^5',
        init = function()
            vim.g.rustaceanvim = {
                server = {
                    default_settings = {
                        ['rust-analyzer'] = {
                            cargo = { allFeatures = true, targetDir = true },
                            check = {
                                allTargets = true,
                                command = 'clippy',
                            },
                            diagnostics = {
                                disabled = { 'inactive-code', 'unresolved-proc-macro' },
                            },
                            procMacro = { enable = true },
                            flags = { exit_timeout = 100 },
                            files = {
                                excludeDirs = {
                                    'target',
                                    'node_modules',
                                    '.direnv',
                                    '.git',
                                },
                            },
                        },
                    },
                },
            }
        end,
        lazy = false,
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            'cmp-nvim-lsp'
        },
        config = function()
            local lspconfig = require('lspconfig')
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

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
