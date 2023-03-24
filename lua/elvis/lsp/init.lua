local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "elvis.lsp.mason"
require("elvis.lsp.handlers").setup()
require "elvis.lsp.null-ls"
