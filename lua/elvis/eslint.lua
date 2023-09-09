-- Set up the LSP client with null-ls and ESLint
lspconfig['null-ls'].setup({
  on_attach = function(client)
    -- Enable null-ls capabilities for the client
    client.resolved_capabilities.document_formatting = true
    client.resolved_capabilities.code_action = true
  end,
  -- Specify the filetypes to apply the null-ls actions
  filetypes = { 'javascript', 'javascript.jsx', 'typescript', 'typescript.tsx' },
  -- Attach null-ls to ESLint
  init_options = {
    diagnostics_format = "${severity} ${message}",
    code_action_format = "✨ ${title}",
  },
})

-- Enable ESLint for the specified filetypes
lspconfig.eslint.setup({
  cmd = 'eslint_d',
  filetypes = { 'javascript', 'javascript.jsx', 'typescript', 'typescript.tsx' },
})
