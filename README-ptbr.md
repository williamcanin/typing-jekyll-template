[Read in English](README.md)

# Typing

![Jekyll site CI](https://github.com/williamcanin/typing-jekyll-template/workflows/Jekyll%20site%20CI/badge.svg?branch=master) ![GitHub release (latest by date)](https://img.shields.io/github/v/release/williamcanin/typing-jekyll-template?style=flat-square) [![Build Status](https://travis-ci.org/williamcanin/typing-jekyll-template.svg?branch=master)](https://travis-ci.org/williamcanin/typing-jekyll-template) ![GitHub](https://img.shields.io/github/license/williamcanin/typing-jekyll-template?style=flat-square) ![GitHub repo size](https://img.shields.io/github/repo-size/williamcanin/typing-jekyll-template?style=flat-square) ![](https://img.shields.io/github/languages/top/williamcanin/typing-jekyll-template.svg?colorB=blue&style=flat-square) ![](https://img.shields.io/github/commit-activity/y/williamcanin/typing-jekyll-template.svg?style=flat-square) ![](https://img.shields.io/github/last-commit/williamcanin/typing-jekyll-template/master.svg?style=flat-square) ![](https://img.shields.io/github/watchers/williamcanin/typing-jekyll-template.svg?style=flat-square) ![](https://img.shields.io/github/stars/williamcanin/typing-jekyll-template.svg?style=flat-square) ![](https://img.shields.io/github/forks/williamcanin/typing-jekyll-template.svg?style=flat-square)

![Typing Change Themes](https://raw.githubusercontent.com/williamcanin/typing-jekyll-template/master/_src/doc/readme/images/change_themes.gif)

## Introdução

**Typing**, é um template para o [Jekyll](http://jekyllrb.com) criado especialmente para quem deseja ter um blog e páginas de maneira rápida e leve. Mantenha as coisas simples, meu amigo!

Sua interface faz parte da filosofia "Keep It Simple", precisamente para ter um alto desempenho em todos os tipos de navegadores e dispositivos móveis.

Você já tem uma página de modelo para "Blog", "Projetos", "Pesquisa", "Contato", "Tags" ,"Resumo", "404" e "Sobre", mas pode alterar como quiser, modificando as strings.

Na página **resume.md**, você pode imprimir usando o atalho Ctrl + P do navegador ou o botão. A impressão eliminará peças inúteis, como a barra lateral.

Você também terá um modelo para postagem no arquivo **"welcome-to-jekyll.md"** e precisará seguir o cabeçalho desse modelo. O arquivo contém algumas informações que você pode pegar para usar em seu website.

A página de contato (**_pages/global/contact.md**) usa o recurso [Formspree](https://formspree.io), você precisa ter uma conta no serviço e adicionar seu **email** ao arquivo `_data/informations.yml`.

```yml
userdata:
  email: "youremail@domain.com"
```

Depois, você deve alterar o tipo de plano que você tem no [Formspree](https://formspree.io) na opção:

```yml
website:
  ...
  content:
    ...
    contact:
      formspree:
        plan: "free|paid"
```

> NOTA: O plano **paid**, é um plano pago, onde o formulário irá ser enviar através do AJAX, que vai retorna uma resposta em modal de sucesso ou falha, se o e-mail foi entregue ou não. Já o plano **free**, que é o plano grátis, não terá um retorno de falha caso a mensagem não seja enviada com sucesso. Você pode saber mais em: [Formspree Plans](https://formspree.io/plans)

Além disso, todo o conteúdo do arquivo `_data/informations.yml` deve ser alterado conforme a gosto e suas necessidades.

**NOTA: O Typing Jekyll Template não é compatível com a compilação atômica no Github Pages devido ao seu próprio ter recurso de plug-ins e a algumas configurações que o tema disponibiliza. Você precisa executar o clone do projeto em sua máquina, compilar o site e implantá-lo nas páginas do Github.**

## Características

- [x] **Google Analytics**
- [x] **Google Fonts**
- [x] **Jekyll Pesquisar na página do blog**
- [x] **Print na página de resume**
- [x] **Avatar animado no sidebar**
- [x] **404 Error Page**
- [x] **Disqus [Contador e Comentários]**
- [x] **Botões de rede sociais**
- [x] **Opções de temas**
- [x] **Ativar e desativar funcionalidades**

**Plugins usados:**

* Plugins:
  - jekyll-coffeescript
  - jekyll-jsminify
  - jekyll-paginate
  - jekyll-gist
  - jekyll-youtube
  - jekyll-tagging
  - jekyll-sitemap
  - jekyll-feed
  - jemoji
  - jekyll-email-protect
  - jektify
* Do próprio projeto:
  - Readingtime [Tempo estimado de leitura]
  - Imager [Acrescentar imagem na postagem ou páginas]
  - DateLang [Datas completas em cada idioma]
  - Badge [Adiciona badges]
  - Endpost [Cria uma linha horizontal]

## Requerimentos

| Requerido       | Como verificar      | Como instalar  |
| --------------- | ------------------- | -------------- |
| Git             | `git --version`     | [Git](http://git-scm.com/) |
| Ruby            | `ruby -v`           | [Ruby](https://www.ruby-lang.org) |
| Gem             | `gem -v`            | **Ruby** contains **Gem** |
| Bundler         | `bundler -v`        | `gem install bundler` |
| Yarn            | `yarn -v`           | [Yarn](https://yarnpkg.com/en/docs/install) |
| Npm             | `npm -v`            | [Npm](https://www.npmjs.com/get-npm) |

## Usando

1 - Clonando e entrando na pasta:

```
$ git clone https://github.com/williamcanin/typing-jekyll-template.git "my_site"
$ cd "my_site"
```

2 - Download de dependências para Typing:

```
$ yarn install
```

> Nota: Se você tiver problemas de travamento com o **yarn** durante a instalação das dependências, você pode estar utilizando o **npm** também dessa forma: `npm install`.

3 - Projeto de compilação para deploy:

```
$ yarn build
```

4 - Iniciando o serviço Jekyll:

```
$ yarn serve
```

## Arquivo '.hidden'

Este arquivo é específico para sistemas Linux, onde estão todos os arquivos e pastas que devem ficar ocultos para não poluir visualmente o projeto.

## Arquivo 'index.md'

Agora a homepage está no arquivo "**index.md**" na pasta raiz do projeto. Escreva uma boa abertura.

## Pasta 'assets'

Essa pasta contém subpastas onde algumas você não precisa fuçar amiguinho, com por exemplo a pasta **css**, **js**, **vendor** e **json**. A pasta **images** por contrário, você deve colocar as imagens para seu website. Cada subpasta da pasta **images** é autoexplicativa.

## Pasta '_pages'

As páginas são encontradas na pasta **_pages/blogger** e **_pages/global**.
A pasta **_pages/blogger** está contido páginas do Blog e a pasta **_pages/global**, é pasta onde está contido a página **about.md** e **projects.md**.

Caso você não queira trabalhar com as páginas **about.md** e **projects.md**, o recomendável é deixar a propriedade **published** para **false**. *NUNCA EXCLUA PÁGINAS DA PASTA **blogger** e **global***, pois elas tem propriedades únicas que um página normal pode não conter.

Se você não quiser ter um Blog no seu website, então você deve desativar no arquivo
**_data/options.yml**, onde você terá mais informação na seção [Arquivos '_data/options.yml'](#arquivo-_dataoptionsyml).

Para criar um página é muito simples. Usando o comando a seguir, você cria o cabeçalho de uma página no diretório **_pages**, onde deve ficar todos suas páginas criadas.

### Criando uma página

```shell
$ yarn page
```

As páginas criadas por você, pode aparecer ou não no menu do seu site. Basta você configurar a propriedde **menu -> enable** do cabeçalho que se parece com esse:

```markdown
---
layout: page
order: #number
title: "page1"
date: 2019-10-07 22:57:30
sitemap:
  priority: 0.7
  changefreq: 'monthly'
  lastmod: 2019-10-07 22:57:30
# Use icons of: https://fontawesome.com/icons
# E.g: fa-briefcase
icon: 
menu:
  enable: true
  local: [default]
script: []
published: false
permalink: # add permilink for page. E.g: /smallparty/
---
```

Algumas propriedades você não deve ser alteradas, como o **layout**, a **data** e o **menu -> local**.

Na propriedade **icon** você pode deve colocar o ícone do [FontAwesome](https://fontawesome.com/icons) que esteja relacionado com sua página criado, ou simplesmente deixar em branco.

A propriedade **order**, você pode colocar um número que (de acordo com as outras páginas), para ordenar no menu do website.

> Não esqueça de deixar a propriedade **published** para **true** para que sua página apareça.

## Pasta '_posts'

A pasta **_posts** é onde você colocará todas suas postagens. Para criar uma postagem, é tão simples quanto criar uma página.

### Criando uma postagem

```shell
$ yarn post
```
Você irá entrar em um intuitivo console para informar o nome do título da sua postagem. Ao criar, o cabeçalho irá ser parecido com isso:

```markdown
---
layout: post
title: "mypost"
date: 2019-10-07 23:06:50
tags: ['tag1','tag2','tag3']
published: false
comments: false
excerpted: |
        Put here your excerpt
day_quote:
 title: "Put here title quote of the day"
 description: |
        "Put here your quote of the day"

# Does not change and does not remove 'script' variable.
script: [post.js]
---
```

Algumas propriedades você não deve ser alteradas, como o **layout**, a **data** e o **script**.

A propriedade **excerpted** é um texto que você deve definir (caso queira), para aparecer na listagem dos posts do seu website.

Já a propriedade **day_quote**, é onde você pode colocar uma frase do seu gosto no final da sua postagem.

A propriedade **comments**, é para ativar ou desativar comentários sobre a postagem em si.

> Não esqueça de deixar a propriedade **published** para **true** para que sua postagem apareça.

## Pasta 'public'

A pasta **public** ficará todo seu website compilado. Será o conteúdo dessa pasta que você deve enviar para seu servidor de hospedagem.

## Pasta '_src'

Essa pasta é onde ficar toda estrutura do template. Você não precisa alterar em nada nessa pasta, a não ser que queira corromper o tema. :)

## Pasta 'vendor'

Essa pasta terá todas as dependências para seu template ser gerado e funcionar. Ela é criada e preenchida com o comando `yarn install`. Não delete ela.

## Arquivos do template que você NÃO deve alterar ou excluir

- Gemfile
- package.json
- Rakefile
- .yarnrc
- .hidden

## Configurações

Bom, agora que você já sabe sobre algumas pastas e arquivos, vamos entender como configurar o Typing para seu gosto. Vamos lá.

### Arquivo 'CNAME'

Para saber sobre esse arquivo, leia sobre registros CNAME [AQUI](https://support.google.com/a/answer/112037?hl=pt-BR) 

### Arquivo '_config.yml'

O primeiro arquivo que você de abrir para configurar é o **_config.yml**. Nesse arquivo você terá algumas indicação de blocos que devem ser alterados, mas basicamente você deve alterar a propriedade **url** e **baseurl** apenas.

Em **url** você informar a url do seu domínio. Por exemplo:

```yml
url: http://mysite.com
```

Em **baseurl** você informa a subpasta que seu website está (caso esteja). Por exemplo:

```yml
baseurl: /site1
```

> NOTA: Não coloque barra no final.

Tem as configurações do plugin [Jektify](https://jektify.github.io), você também pode alterar ao seu gosto.
Outra configuração que você poderia fazer é nas propriedades **reading_time** e **datelang**, alterando o *locale* de ambas para seu idioma.

Os idiomas suportados para **reading_time** e **datelang**, são:

- ch_CH - Chinese
- de_DE - Deutschland
- en_US - English
- es_ES - Spanish
- fr_FR - French
- it_IT - Italian
- ja_JP - Japan
- pt_PT - Portuguese
- ru_RU - Russian

Outras alterações que você pode fazer no **_config.yml**:

Ativa ou desativa paginação para o blog [padrão: true]:

```yml
pagination:
  enabled: true
```

> NOTA: Se quiser desativar o paginador, após fazer as configurações de cima, você terá que ir na página **_pages/blogger/blog.md** e deixar o **pagination -> enable** para **false**.

Altera a porta do servidor [padrão: 4000]:

```yml
port: 4000
```

Altera host do servidor [padrão: localhost]:

```yml
host: localhost
```

> As outras propriedade você não precisa fuçar.

### Arquivo '_data/informations.yml'

O arquivo **'_data/informations.yml'** é um arquivo que contém informações do template, a maioria delas são as string que aparece no website. Você deve configurar os valores das propriedades desse arquivo ao seu gosto.

Algumas configurações básicas que você irá fazer neste arquivo é de:

#### Trocar o avatar

Você deve informar o nome do seu avatar, que deve estar na pasta **assets/images/avatar** na seguinte propriedade:

```yml
sidebar:
  avatar:
    img: "your_first_photo_avatar.png|jpg"
    flip:
      img: "your_second_photo_avatar.png|jpg"
```

O avatar tem uma animação de Flip, onde você deve informar uma segunda imagem na propriedade **flip -> img**. Caso você não queira essa animação, você pode desativar ela lendo a seção [Arquivo '_data/options.yml'](#arquivo-_dataoptionsyml).

#### Trocar o tema

Esse é um dos recursos mais legais do Typing, que é poder alterar entre vários temas de uma maneira rápida, e até mesmo [customizar](#criando-seu-próprio-tema) um (caso você saiba um pouco de CSS/SCSS). Vamos lá.

Por padrão, o Typing vem 5 (cincos) temas oficiais, eles são:

- typing
- whiteglass
- cloudysky
- hacking
- littlegirl

Para usar um tema, basta alterar a propriedade **theme** no arquivo **'_data/informations.yml'** e depois compilar seu projeto novamente:

```yml
website:
  ....
  theme: "typing"
```

##### Conheça o rosto dos temas

###### Typing

![Typing](https://raw.githubusercontent.com/williamcanin/typing-jekyll-template/master/_src/doc/readme/images/typing.png)

###### Whiteglass

![Whiteglass](https://raw.githubusercontent.com/williamcanin/typing-jekyll-template/master/_src/doc/readme/images/whiteglass.png)

###### Cloudysky

![Whiteglass](https://raw.githubusercontent.com/williamcanin/typing-jekyll-template/master/_src/doc/readme/images/cloudysky.png)

###### Hacking

![Hacking](https://raw.githubusercontent.com/williamcanin/typing-jekyll-template/master/_src/doc/readme/images/hacking.png)

###### Littlegirl

![Littlegirl](https://raw.githubusercontent.com/williamcanin/typing-jekyll-template/master/_src/doc/readme/images/littlegirl.png)

#### Criando seu próprio tema

Você também terá o arquivo **_src/_sass/theme/custom.scss**, onde você pode criar um tema próprio sem alterar os oficiais do Typing.

> NOTA: A pasta **_src** pode estar oculta devido o arquivo **.hidden**. Com seu gerenciador de arquivos, mostre os arquivos ocultos ou abra todo projeto em um editor de texto preferencial. Só altere arquivos do template caso você saiba o que esta fazendo.

#### Comentários nas postagens

O Typing usa o [Disqus](https://disqus.com) para incorporar comentários no blog. Para ter o recurso de comentários, você deve informar o usuário do no arquivo "**_data/_informations.yml**":

```yaml
userdata:
  disqus:
    username: "my_user_disqus"
```

> NOTA: O recurso de comentário aparecerá se o ambiente Jekyll for de produção, não de desenvolvimento, isto é, ao executar o comando **yarn build**.

Você também pode habilitar ou desabilitar o comentário para cada postagem que você fazer. No cabeçalho da postagem, altera a propriedade:

```yaml
comments: true|false
```

### Arquivo '_data/options.yml'

Este arquivo contém opções de ativar e desativar recursos do Typing. Nesse arquivo basicamente você deve alterar conforme seu gosto.

#### Desativando o Blog

Uma das coisas que você pode não querer, é um website sem blog, nesse caso você deve deixar a propriedade abaixo para **false**:

```yml
blog:
  enable: false
```

Após alterar essa propriedade, você **DEVE OBRIGATORIAMENTE** alterar no arquivo **_pages/blogger/blog.md** a seguinte propriedade para **false**:

```yml
menu:
  enable: false
```

Assim o link **Blog** não vai aparecer no menu.

#### Ativando e Desativando recursos do avatar

Outro recurso que você pode querer alterar, é a animação do avatar. Por padrão, animação FLIP vem ativada. Para desativar essa animação, você deixa a propriedade baixo com valor de **false**:

```yml
sidebar:
  ...
  avatar:
    ....
    flip: false
```

Se não quiser um avatar no seu website, simplesmente desative-o na opção:

```yml
sidebar:
  ...
  avatar:
    enable: false
```

#### Habilitando simulador de terminal

Outro recurso que o Typing adquiriu, foi um simulador de terminal na página inicial. Essa é uma questão visual apenas, pois o terminal não é de verdade.

Misturando um projeto que lembra o passado e ao mesmo tempo o presente.

Para habilitar o simulador de terminal na página inicial, basta deixar as configurações igual abaixo:

```yml
home:
  ...
  terminal:
    enable: true
```

Veja como esse recurso irá se comportar no seu projeto:

![Terminal](https://raw.githubusercontent.com/williamcanin/typing-jekyll-template/master/_src/doc/readme/images/terminal.png)

> Existe muito mais funcionalidades no arquivo **_data/options.yml** para você explorar :)

## Demo

Se você quiser ver o projeto em ação, clique aqui > [Demo](http://williamcanin.github.io/typing-jekyll-template/)

## Perguntas

Dê a sua opinião sobre o Typing Jekyll Template, em:
[Typing Jekyll Template - Issues](https://github.com/williamcanin/typing-jekyll-template/issues)

## Versões

Você pode baixar as versões sem criar um clone com o Git. Vamos para [Releases](https://github.com/williamcanin/typing-jekyll-template/releases)

## Licença e Copyrights

Licença: [MIT License (MIT)](https://opensource.org/licenses/MIT)

Copyright: William C. Canin | Copyright © 2017-2020

*Você pode alterar a estrutura do Typing Jekyll Template conforme desejar, desde que não manipule ou remova os direitos autorais de William C.Canin no projeto*

## Doação

Se você gostou do meu trabalho, me compre um café <3

[![paypal](https://www.paypalobjects.com/pt_BR/BR/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=C4EEL62SFHZS4&source=url)


## Creditos

* Nome: William C. Canin
* Região: Brazil - SP
* E-Mail: william.costa.canin@gmail.com
* GitHub: [William Canin](http://github.com/williamcanin)
* Página pessoal: [William Canin](http://williamcanin.github.com)
