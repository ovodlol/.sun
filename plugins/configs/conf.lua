require("conform").setup({
  linters_by_ft = {
    go = {"golangci_lint", "staticcheck"},
  },
  formatters_by_ft = {
    go = { "gofmt", "goimports", "golines" },
    -- Adicione outros formatadores para outras linguagens aqui
  },
  format_on_save = {
    timeout_ms = 499,
    lsp_fallback = true,
  },

})
