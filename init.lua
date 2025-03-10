-- requires(chama as confgurações de outros arquivos):
  package.path = package.path .. ";" .. vim.fn.stdpath("config") .. '/plugins/configs/?.lua'
  keymap = vim.keymap.set
  require('cnt')

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

  -- conform 
    require("conf")

  -- oil
    require('oil')

  -- LSP
    require('lspconfig').gopls.setup{
      settings = {
        gopls = {
                  
        },
      },
    }

