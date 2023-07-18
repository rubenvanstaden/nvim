local opt = { noremap = true, silent = true }
local lsp = require("lspconfig")

-- https://github.com/mickael-menu/zk/blob/main/docs/editors-integration.md
require("zk").setup({
    picker = "select",
    lsp = {
        config = {
            name = "zk",
            cmd = { "zk", "lsp" },
        },
        auto_attach = {
            enabled = true,
        },
    },
})

-- https://clangd.llvm.org/installation#compile_commandsjson
lsp.clangd.setup({
    filetypes = {"c", "cpp"},
    cmd = {"clangd", "--background-index", "--clang-tidy"},
})

-- https://github.com/rust-lang/rust-analyzer
lsp.rust_analyzer.setup({
    -- Server-specific settings. See `:help lspconfig-setup`
    settings = {
        ['rust-analyzer'] = {},
    },
})

-- https://github.com/golang/tools/tree/master/gopls
lsp.gopls.setup {
    cmd = {"gopls", "serve"},
    filetypes = {"go", "gomod"},
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
                unkeyedliteral = true,
                unusedwrite = true,
                fieldalignment = false,
                nilness = true,
                shadow = false,
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

vim.api.nvim_set_keymap('n', 'gd',        "<cmd> lua vim.lsp.buf.definition() <cr>",  opt)
vim.api.nvim_set_keymap('n', '<Leader>a', "<cmd> lua vim.lsp.buf.code_action() <cr>", opt)
vim.api.nvim_set_keymap('n', '<Leader>r', "<cmd> lua vim.lsp.buf.references() <cr>",  opt)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
