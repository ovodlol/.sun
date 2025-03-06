vim.cmd([[
   hi MyHeaderGroup guifg=#ffef61
   hi MyButtonGroup guifg=#00ff00 guibg=#000000 gui=bold
   hi MyButtonHighlightGroup guifg=#ff4500 guibg=#1e1e1e gui=italic
]])

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {        
[[     Bem-vindo ao]],
[[  /$$$$$$$ /$$   /$$ /$$$$$$$ ]],
[[ /$$_____/| $$  | $$| $$__  $$]],
[[|  $$$$$$ | $$  | $$| $$  \ $$]],
[[ \____  $$| $$  | $$| $$  | $$]],
[[ /$$$$$$$/|  $$$$$$/| $$  | $$]],
[[|_______/  \______/ |__/  |__/]],
}

-- Configurações o estilo
  dashboard.section.header.opts = {
    hl = "MyHeaderGroup",
    position = "center",
    layout = {
      { type = "padding", val = 2 }, -- Espaçamento superior (2 linhas em branco)
      dashboard.section.header,
      { type = "padding", val = 2.5 }, -- Espaçamento abaixo do cabeçalho (15 linhas em branco)
      dashboard.section.buttons,
    }, 
  }
  dashboard.section.buttons.opts = {
    hl = "MyButtonGroup", -- Estilo principal dos botões
    hl_shortcut = "MyButtonHighlightGroup", -- Estilo para os atalhos (como 'e', 'f', 'q')
  }

-- Botões
  dashboard.section.buttons.val = {
    dashboard.button("e", "📄 Novo Arquivo", ":ene <BAR> startinsert <CR>"),
    dashboard.button("r", "🕒 Arquivos Recentes", ":Telescope oldfiles<CR>"),
    dashboard.button("n", "🔎 procurar")
    dashboard.button("q", "❌ Sair", ":qa<CR>"),
  }

-- Configurando rodapé
  dashboard.section.footer.val = "Feliz programação amigo!"

-- Aplicando o tema
  alpha.setup(dashboard.opts)

