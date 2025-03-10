  Run = vim.cmd
  vim.g.mapleader = ";"
  Run("set number")
  vim.opt.guifont='JetBrainsMono Nerd Font'

    -- define que o tab seja 2 espaços:
      Run("set expandtab")
      Run("set tabstop=2")
      Run("set softtabstop=2")
      Run("set shiftwidth=2")

      -- teclas de atalho:
        local keymap = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        keymap('i', '<C-s>', '<cmd>w<CR>', opts)
        keymap('n', '<C-i>', '<cmd>Lazy<CR>', opts)
        keymap('n', '<leader>ol', ':vsplit<CR>:vertical resize 30<CR>:Oil<CR>', opts)
  vim.diagnostic.config({
    signs = {
      error = { text = "", texthl = "DiagnosticSignError" },
      warn = { text = "", texthl = "DiagnosticSignWarn" },
      hint = { text = "", texthl = "DiagnosticSignHint" },
      info = { text = "", texthl = "DiagnosticSignInfo" },
    },
  })
