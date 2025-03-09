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
      ---@module 'oil'
      ---@type oil.SetupOpts
      opts = {},
      -- Optional dependencies
      dependencies = { { "echasnovski/mini.icons", opts = {} } },
      -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
      -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
      lazy = false,
    },
    {"neovim/nvim-lspconfig",
      dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp",
      },
      config = function()
        require "lspconfig"
      end,
    },
    {
      "williamboman/mason.nvim",
      config = function()
        require "mason"
      end,
    },
    {'jose-elias-alvarez/null-ls.nvim'}, -- formata o codigo
    { "goolord/alpha-nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
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

