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
                'ruff',
            },
            automatic_enable = false
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
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            vim.lsp.config['lua_ls'] = {
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" }
                        },
                        workspace = {
                            checkThirdParty = false,
                            library = { vim.env.VIMRUNTIME },
                        },
                    },
                },
            }
            vim.lsp.enable('lua_ls')

            vim.lsp.config['ts_ls'] = {
                capabilities = capabilities
            }
            vim.lsp.enable('ts_ls')

            vim.lsp.config['clangd'] = {
                capabilities = capabilities
            }
            vim.lsp.enable('clangd')

            vim.lsp.config['cmake'] = {
                capabilities = capabilities
            }
            vim.lsp.enable('cmake')

            vim.lsp.config['ruff'] = {
                capabilities = capabilities
            }
            vim.lsp.enable('ruff')
        end
    },
}
