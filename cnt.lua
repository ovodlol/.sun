-- ~/.config/nvim/lua/minhas_configuracoes.lua
Run = vim.cmd
local M = {}

  function M.setup()
    -- opções basicas do vim:
      Run("set number")
      vim.o.guifont = 'JetBrainsMono Nerd Font:h17'

      -- define que o tab seja 2 espaços:
        Run("set expandtab")
        Run("set tabstop=2")
        Run("set softtabstop=2")
        Run("set shiftwidth=2")

      -- teclas de atalho:
        local keymap = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        keymap('n', '<C-n>', ':NERDTreeToggle<CR>', opts)
        keymap('n', '<C-s>', ':w<CR>', opts)
        keymap('n', '<C-i>', ':PlugInstall<CR>', opts)

  end

return M

