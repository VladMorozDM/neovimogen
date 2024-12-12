require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "clangd" }
})
local lsp_keymap = function(_, _)
    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', {})
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {})
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', {})
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', {})
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', {})
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', {})
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', {})
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', {})
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', {})
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', {})
end

local lsp_config = require("lspconfig")
lsp_config.lua_ls.setup({
    on_attach = lsp_keymap
})
lsp_config.clangd.setup({
    on_attach = lsp_keymap
})
