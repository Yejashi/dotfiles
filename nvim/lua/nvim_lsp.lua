lua << EOF
  local nvim_lsp = require'nvim_lsp'
  -- Disable Diagnostcs globally
  vim.lsp.callbacks["textDocument/publishDiagnostics"] = function() end
EOF
