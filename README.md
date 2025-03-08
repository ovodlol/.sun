# Configurações do Neovim

Este repositório contém minhas configurações pessoais do Neovim, gerenciadas com o [Lazy](https://github.com/folke/lazy.nvim).

## Pré-requisitos

* Neovim (versão 0.8 ou superior)
* Git
* Go (para o LSP de Go e golangci-lint)
* golangci-lint (opcional, para verificação de código Go)

## Instalação

1.  Clone este repositório:

    ```bash
    git clone [https://github.com/ovodlol/.sun](https://github.com/ovodlol/.sun) ~/.config/nvim
    ```

2.  Abra o Neovim e o Lazy irá instalar automaticamente os plugins configurados no seu `init.lua`.
3.  Instale as dependências do LSP de Go (se estiver usando Go):

    ```bash
    go install golang.org/x/tools/gopls@latest
    go install [github.com/golangci/golangci-lint/cmd/golangci-lint@latest](https://www.google.com/search?q=https://github.com/golangci/golangci-lint/cmd/golangci-lint%40latest)
    ```

## Uso

Minhas configurações incluem os seguintes plugins:

* **LSP:**
    * `neovim/nvim-lspconfig`: Configurações para usar com o Language Server Protocol.
    * `williamboman/mason.nvim`: Gerenciador de pacotes para LSPs, linters e formatadores.
    * `jose-elias-alvarez/null-ls.nvim`: Integra ferramentas externas como linters e formatadores como fontes LSP.
* **Interface:**
    * `goolord/alpha-nvim`: Tela de boas-vindas personalizada.
    * `nvim-telescope/telescope.nvim`: Buscador de arquivos, símbolos e outros elementos.
    * `nvim-lualine/lualine.nvim`: Barra de status personalizável.
* **Outros:**
    * `nvim-treesitter/nvim-treesitter`: Realce de sintaxe e informações sobre a estrutura do código.
    * `ray-x/go.nvim`: Funcionalidades específicas para a linguagem Go.
    * `catppuccin/nvim`: Tema de cores.

## Configurações do LSP

* O `nvim-lspconfig` é configurado para usar o `gopls` para Go.
* O `null-ls` está configurado para usar o `gofmt` para formatação e `golangci-lint` para verificação de código Go.

## Personalização

Sinta-se à vontade para modificar o arquivo `init.lua` e adicionar seus próprios plugins. O Lazy facilita a configuração e o gerenciamento de plugins.

## Capturas de tela

(Adicione capturas de tela aqui)
