-- requires(chama as confgurações de outros arquivos):
  package.path = package.path .. ";" .. vim.fn.stdpath("config") .. '/plugins/configs/?.lua'
  require('cnt')

  -- mini.file
    -- require('').setup({})

  -- plugins
    require('laz')

  -- alpha
    require('alp')

  -- catppuccin
    local catppuccin = require("catppuccin")
      vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
      Run[[colorscheme catppuccin]]

  -- lualine 
    require('lines')

  -- telescope
    require('tele')

  -- null-ls
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.diagnostics.golangci_lint,
      },
    })


