local opt = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
local lsp = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- https://github.com/mickael-menu/zk/blob/main/docs/editors-integration.md
require("zk").setup({
    picker = "select",
    lsp = {
        config = {
            cmd = { "zk", "lsp" },
            name = "zk",
        },
        auto_attach = {
            enabled = true,
            filetypes = { "md" },
        },
    },
})

-- https://clangd.llvm.org/installation#compile_commandsjson
lsp.clangd.setup({
    root_dir = lsp.util.root_pattern('.git', 'compile_commands.json', 'compile_flags.txt', 'bin'),
    cmd = { 'clangd', '--background-index' },
})

-- https://github.com/rust-lang/rust-analyzer
lsp.rust_analyzer.setup {
    capabilities = capabilities,
}

-- https://github.com/golang/tools/tree/master/gopls
lsp.gopls.setup {
    capabilities = capabilities,
    cmd = {"gopls", "serve"},
    filetypes = {"go", "gomod"},
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
                unkeyedliteral = true,
                unusedwrite = true,
                fieldalignment = true,
                nilness = true,
                shadow = true,
                useany = true,
                unusedvariable = true,
            },
            staticcheck = true,
            usePlaceholders = true,
            completionDocumentation = true,
            matcher = "CaseInsensitive",
            linksInHover = false,
            hoverKind = "NoDocumentation",
        },
    },
}

-- https://github.com/sumneko/lua-language-server
lsp.lua_ls.setup {
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

map('n', 'gd',        "<cmd> lua vim.lsp.buf.definition() <cr>",  opt)
map('n', '<Leader>a', "<cmd> lua vim.lsp.buf.code_action() <cr>", opt)
map('n', '<Leader>h', "<cmd> lua vim.lsp.buf.hover() <cr>",       opt)
map('n', '<Leader>m', "<cmd> lua vim.lsp.buf.rename() <cr>",      opt)
map('n', '<Leader>r', "<cmd> lua vim.lsp.buf.references() <cr>",  opt)
