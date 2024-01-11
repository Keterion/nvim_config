require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "wgsl_analyzer", "typst_lsp", "rust_analyzer", "html", "cssls", "jdtls", "pyright" }
})

local on_attach = function(_, bufnr)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup{
  on_attach = on_attach,
  capabilities = capabilities
}
require("lspconfig").wgsl_analyzer.setup{
  on_attach = on_attach,
  capabilities = capabilities
}
require("lspconfig").typst_lsp.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    exportPdf = "onSave",
  }
}
require("lspconfig").rust_analyzer.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

require("lspconfig").html.setup{
  on_attach = on_attach,
  capabilities = capabilities
}
require("lspconfig").cssls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").jdtls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").pyright.setup{
  on_attach = on_attach,
  capabilities = capabilities,
}
