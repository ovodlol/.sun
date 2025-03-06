-- requires(chama as confgurações de outros arquivos):
  package.path = package.path .. ';C:\\Users\\Eduardo\\AppData\\Local\\nvim\\?.lua'
  require('cnt')
  require('laz')
  require('alp')

-- plugins:
  vim.call('plug#begin') -- usa o vim-plug (serve para gerenciar os plugins) em lua
    local Plug = vim.fn['plug#']

    -- lista de plugins
      Plug 'tpope/vim-sensible'
      Plug 'nvim-treesitter/nvim-treesitter'
      Plug 'neovim/nvim-lspconfig'
      Plug 'ray-x/go.nvim'
      Plug 'ray-x/guihua.lua'
      Plug 'catppuccin/nvim'
      Plug 'nvim-lualine/lualine.nvim'
      Plug 'ryanoasis/vim-devicons'
      Plug 'nvim-telescope/telescope-file-browser.nvim'

  vim.call('plug#end')



  -- catppuccin
    local catppuccin = require("catppuccin")
      vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
      Run[[colorscheme catppuccin]]

  -- lualine 
    require('lines')

  -- telescope
    require('tele')
