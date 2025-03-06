local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

require('telescope').setup {
  defaults = {
    prompt_prefix = "🔍 ", -- Altere o ícone do prompt
    selection_caret = "➜ ", -- Ícone para a seleção
    layout_config = {
      horizontal = { preview_width = 0.6 }, -- Ajusta a largura do preview
      vertical = { preview_height = 0.5 },  -- Ajusta a altura do preview
    },
    color_devicons = true, -- Habilitar ícones coloridos
  },

  pickers = {
    find_files = {
      theme = "dropdown", -- Use o tema "dropdown" para uma janela mais compacta
    },
  },
  extensions = {
    file_browser = { --
      layout_strategy = "vertical", -- Define o layout como vertical
      layout_config = {
        height = 1,   -- Ajusta a altura para ocupar toda a tela
        prompt_position = "top", -- Posição do prompt
      },
      theme = "dropdown",
      hijack_netrw = true,
    },
  }
}

require('telescope').load_extension('file_browser')
-- atalhos
  keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
  keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)
  keymap('n', '<leader>fb', '<cmd>Telescope file_browser<CR>', opts)
  keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', opts)
