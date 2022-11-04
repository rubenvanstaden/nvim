local lsp = require("lspconfig")

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

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

-- https://github.com/JohnnyMorganz/luau-lsp
lsp.luau_lsp.setup {
    capabilities = capabilities,
}

-- https://github.com/golang/tools/tree/master/gopls
lsp.gopls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
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
