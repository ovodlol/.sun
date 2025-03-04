-- requires(chama as confgurações de outros arquivos):
  require('cnt').setup()

-- plugins:
  vim.call('plug#begin') -- usa o vim-plug (serve para gerenciar os plugins) em lua
    local Plug = vim.fn['plug#']

    -- lista de plugins
      Plug 'tpope/vim-sensible'
      Plug 'preservim/nerdtree' -- um navegador em arvore
      Plug 'nvim-treesitter/nvim-treesitter'
      Plug 'neovim/nvim-lspconfig'
      Plug 'ray-x/go.nvim'
      Plug 'ray-x/guihua.lua'
      Plug 'catppuccin/nvim'
      Plug 'nvim-lualine/lualine.nvim'
      Plug 'nvim-tree/nvim-web-devicons'
      Plug 'ryanoasis/vim-devicons'

  vim.call('plug#end')



  -- catppuccin
    local catppuccin = require("catppuccin")
      vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
      Run[[colorscheme catppuccin]]

  -- NERDtree
    vim.cmd([[
      augroup NERDTree
        autocmd!
        autocmd VimEnter * NERDTree | wincmd p
      augroup END
      autocmd bufenter * if (winnr('$') == 1 && &filetype == 'nerdtree') | q | endif
      let g:NERDTreeDirArrows = 1
    ]])
    vim.g.NERDTreeGitStatusWithFlags = 1

  -- lualine 
    require('lines')
