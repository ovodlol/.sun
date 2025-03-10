local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- lista de plugins do lazy
  require("lazy").setup({

    {
      'stevearc/oil.nvim',
      opts = {},
      dependencies = { { "echasnovski/mini.icons", opts = {} } },
      lazy = false,
    },
    {"neovim/nvim-lspconfig",
      dependencies = {
        "hrsh7th/nvim-cmp",
      }
    },
    {"stevearc/conform.nvim"}, -- complementos para o LSP
    { "goolord/alpha-nvim", dependencies = { "nvim-tree/nvim-web-devicons" } }, -- uma tela de inicio
    { "nvim-telescope/telescope.nvim", dependencies = { 
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim"
      } 
    },
    -- { 'tpope/vim-sensible' },
    { 'nvim-treesitter/nvim-treesitter' },
    { 'ray-x/go.nvim' },
    { 'catppuccin/nvim' }, -- o tema que uso
    { 'nvim-lualine/lualine.nvim' },
  })

