local lsp = require("lspconfig")

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- https://github.com/rust-lang/rust-analyzer
lsp.rust_analyzer.setup {
    capabilities = capabilities,
}

-- https://clangd.llvm.org/installation.html
lsp.clangd.setup {
    capabilities = capabilities,
}

-- https://github.com/emacs-lsp/lsp-pyright
lsp.pyright.setup {
    capabilities = capabilities,
}

-- https://github.com/sumneko/lua-language-server
lsp.sumneko_lua.setup {
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
}

-- https://github.com/golang/tools/tree/master/gopls
lsp.gopls.setup {
    cmd = {"gopls", "serve"},
    filetypes = {"go", "gomod"},
    settings = {
        gopls = {
            staticcheck = true,
            analyses = {
                unusedparams = true,
                fieldalignment = true,
                nilness = true,
                shadow = true,
                unusedwrite = true,
                useany = true,
                unusedvariable = true,
            },
        },
    },
}
