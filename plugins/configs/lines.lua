

require('lualine').setup{
  theme = 'auto',
  
  tabline = {
    lualine_a = {'buffers'},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'tabs'}
  },

  sections = {
    lualine_a = {
      {
        function()
          local mode = vim.api.nvim_get_mode().mode
          if mode == 'n' then
            return '🌞' -- Use um caractere Unicode para normal
          elseif mode == 'i' then
            return '✏️' -- Use um caractere Unicode para insert
          elseif mode == 'v' then
            return '👀' -- Use um caractere Unicode para visual
          elseif mode == 'c' then
            return '🖥️'
          else
            return mode
          end
        end
      }
    },
    lualine_b = {'branch'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {'filetype'},
    lualine_z = {'progress'}
  },
}
