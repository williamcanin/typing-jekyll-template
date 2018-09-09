# Change Log

All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

CHANGELOG - Portuguese - Brazil

## [0.0.9] - 2017-04-01
### Vendors
- Jekyll 3.4.3 CDN
- Bootstrap 3.3.4 CDN [https://github.com/twbs/bootstrap/archive/v3.3.4.tar.gz]
- Font Awesome CDN [icones]
- Fonte Space Mono [principal]
- Fonte Open Sans CDN
- Para ver os demais, acesse o arquivo "Gemfile".
- Iniciando o projeto.

## [1.0.0] - 2017-04-13
### Adicionado
- Lançanmento da Pre-release (Beta).

## [1.0.1] - 2016-04-16
### Adicionado
- Icone de rede sociais na barra lateral abaixo do menu.
- Listagem de Posts com texto de excerpt.
- O post obteve seções de autor e mensagem do dia, alem de uma linha horizontal para
  encerrar a postagem.
- Contador de comentários na listagem de posts.
- Plugins na pasta "_plugins"
- Plugin "imager", um plugin para inserir imagens responsivas nas postagens. Opção de
  escolher o comportamento da imagem: left, right ou center.
- Plugin DateLang, com prioridade de inserir Data por extensa em diversos idiomas.
- Plugin ReadingTime, sua função é mostrar uma mensagem informando o leitor o tempo de leitura
  aproximado que ele terá no texto.
- Plugin "Fa", sua ação é inserir icones usando o Font Awesome nas postagens. Tem a opção de escolher o
  configurar do tamanho do ícone.
- Arquivos de configurações de plugins, adicionados na pasta: "src".
- Recurso de criação de cabeçalho de posts para Blog e para página Hello, através Rakefile (Ruby).
- Recurso de gerenciar projeto com o script "typing.sh". Esse script fará praticamente quase
  toda ação do projeto, caso o usuário use S.O Unix.
- Avatar na sidebar e na página de Hello.
- Google Analytics.
- Botões de compartilhamento do post. [Facebook, LinkedIn, Google+, Twitter ]
- Plugin "jekyll-coffeescript" e "jekyll-jsminify"
- Indice na página de "Resume".
- Arquivo "robots.txt" e imagem "screenshot.png"
### Alterando
- Alguns blocos do arquivo "_config.yml".
- Estrutura de string do website, foram mudados para o "_data/dbase.yml".
- Página de Error 404, como animação de gif.
- MetaTags Head foram melhoradas (SEO).
- Path de idiomas dos plugins "DateLang" e "ReadingTime" adicionados no diretório "_plugins" ocultamente.
## [1.0.2] - 2017-08-22
### Adicionado
- Menu "Search" e "Tags" passam a ser submenu do menu "Blog"
- Novo recurso para deixar o website em modo de manutenção.
## [1.0.3] - 2017-11-08
### Alterando
- Correção de estrutura nos SCSS.
- Corrigido bug na impressão do CV.
### Adicionado
- Novo tema "pergamin" como padrão.
- Melhorias na folha de estilo.
- "Vendor Offline" é um recurso para desenvolver o projeto com seus arquivos de fornecedores
  sem uma conexão com a internet. Você pode saber mais acessando o arquivo: "assets/vendor-off/README.txt".
## [1.0.4] - 2017-11-23
### Alterando
- Retirando "div" de licença do arquivo pieces/footer.html
- Implementando novas instruções no arquivo README.md
### Adicionado
- Novo tema "Light Linux".
- Script para realizar deploy nas branchs de código fonte e website construido.
## [1.0.5] - 2017-01-03
### Alterando
- Correção de compatibilidade de gems no arquivo Gemfile
## [2.0.0] - 2018-02-06
### Alterando
- Novas melhorias no código e na estrutura.
- Meotdologia BEM.
- Bootstrap 4
- Substituição do plugin "jekyll-spotify-plugin" por "jektify"
- Fonts online. Google Fonts.
- JQuery cdn.
- Icons CDN by Fontawesome.io
- Corrigindo erro no arquivo feed.xml
### Adicionando
- Recursos de habilitar/desabilitar funções no template.
- Inserção de 4(quatro) temas.
- Layout para mensagem de envio com sucesso de contato.
## [2.1.1] - 2018-02-08
### Alterando
- Adicionando opções de mudança nas fontes por scss
- Melhorias em html.
- Opção de customizar o tema com o style custom.scss.

## [2.1.2] - 2018-02-11
### Alterando
- Correção de código no arquivo "init.sh" e alteração no REDME.md (doc).
- Correção de bug ao incorporar scripts Google Analitics e Disqus.
## [2.1.3] - 2018-02-11
### Alterando
- Arrumando bug no layout 'postlist.html' no excerpted.
## [2.1.4] - 2018-08-27
### Adicionando
- Nova mensagem de NOTA no final da página de contato.
- Fonte Open Sans incluida no projeto.
- Componente para markdown: markdown_mt, markdown_bt.
### Alterando
- Arrumando bug no layout de print com font-size.
- Impressão com font Open Sans.
- Correação de bug no input do layout search.
## [2.1.5] - 2018-09-09
### Adicionando
- Compatibilidade com Jekyll 3.8.2
- Compatibilidade com Jektify 1.0.3.
