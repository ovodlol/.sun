local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

require('telescope').setup {
  defaults = {
    prompt_prefix = "🔍 ", -- Altere o ícone do prompt
    selection_caret = "➜ ", -- Ícone para a seleção
    layout_strategy = "horizontal",
    layout_config = {
      width = 0.5,
      height = 0.9,
      prompt_position = 'top',
      preview_width = 0.3,
    },    
    color_devicons = true, -- Habilitar ícones coloridos
  },
  extensions = {
    file_browser = { --
          
    },
  }
}

require('telescope').load_extension('file_browser')
-- atalhos
  keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
  keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)
  keymap('n', '<leader>fb', '<cmd>Telescope file_browser<CR>', opts)
  keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', opts)
