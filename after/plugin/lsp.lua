require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "clangd", "cmake", "pylsp", 'bashls' }
})
local lsp_keymap = function(_, _)
    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', {})
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {})
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', {})
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', {})
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', {})
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', {})
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', {})
    vim.keymap.set('n', '<leader>vr', '<cmd>lua vim.lsp.buf.rename()<cr>', {})
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', {})
    vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', {})
end
-- Set up nvim-cmp.
local cmp = require("cmp")
cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            --     vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
            vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<C-z>'] = cmp.mapping.select_prev_item(),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'path' },
        { name = 'vsnip' }, -- For vsnip users.
    }, {
        { name = 'buffer' },
        { name = 'look' },
    })
})

-- To use git you need to-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' },
        { name = 'fine-cmdline' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' },
        { name = 'fine-cmdline' },
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_config = require("lspconfig")
lsp_config.lua_ls.setup({
    on_attach = lsp_keymap,
    capabilities = capabilities,
})
lsp_config.clangd.setup({
    on_attach = lsp_keymap,
    capabilities = capabilities
})
lsp_config.pylsp.setup({
    on_attach = lsp_keymap,
    capabilities = capabilities
})
lsp_config.bashls.setup({
    on_attach = lsp_keymap,
    capabilities = capabilities,
})
lsp_config.cmake.setup({
    on_attach = lsp_keymap,
    capabilities = capabilities,
})

