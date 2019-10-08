# Typing Jekyll Template

![](https://img.shields.io/github/languages/top/williamcanin/typing-jekyll-template.svg?colorB=blue&style=flat-square) ![](https://img.shields.io/github/commit-activity/y/williamcanin/typing-jekyll-template.svg?style=flat-square) ![](https://img.shields.io/github/last-commit/williamcanin/typing-jekyll-template.svg?style=flat-square) ![](https://img.shields.io/github/last-commit/williamcanin/typing-jekyll-template/master.svg?style=flat-square) ![](https://img.shields.io/github/watchers/williamcanin/typing-jekyll-template.svg?style=flat-square) ![](https://img.shields.io/github/stars/williamcanin/typing-jekyll-template.svg?style=flat-square) ![](https://img.shields.io/github/forks/williamcanin/typing-jekyll-template.svg?style=flat-square)

** Typing Jekyll Template **, é um template para o [Jekyll](http://jekyllrb.com) criado especialmente para quem deseja ter um blog e páginas de maneira rápida e leve. Mantenha as coisas simples, meu amigo!

![Typing Jekyll Template](https://raw.githubusercontent.com/williamcanin/typing-jekyll-template/master/screenshot.png)

## Índices

* [Introdução](https://github.com/williamcanin/typing-jekyll-template/#introduction)
* [Feature](https://github.com/williamcanin/typing-jekyll-template/#feature)
* [Requeriments](https://github.com/williamcanin/typing-jekyll-template/#requeriments)
* [Usage](https://github.com/williamcanin/typing-jekyll-template/#usage)
* [Custom Appearance](https://github.com/williamcanin/typing-jekyll-template/#custom-appearance)
* [Deploy](https://github.com/williamcanin/typing-jekyll-template/#deploy)
* [Demo](https://github.com/williamcanin/typing-jekyll-template/#demo)
* [Questions](https://github.com/williamcanin/typing-jekyll-template/#questions)
* [Versions](https://github.com/williamcanin/typing-jekyll-template/#versions)
* [License and Copyrights](https://github.com/williamcanin/typing-jekyll-template/#license-and-copyrights)
* [Credits](https://github.com/williamcanin/typing-jekyll-template/#credits)

## Introduction

Sua interface faz parte da filosofia "Keep It Simple", precisamente para ter um alto desempenho em todos os tipos de navegadores e dispositivos móveis.

Você já tem uma página de modelo para "Blog", "Projetos", "Pesquisa", "Contato", "Tags" e "Resumo", mas pode alterar como quiser, modificando as strings.

Na página **resume**, você pode imprimir usando o atalho Ctrl + P do navegador ou o botão. A impressão eliminará peças inúteis, como a barra lateral. Você também terá um modelo para postagem (welcome-to-jekyll) e precisará seguir o cabeçalho desse modelo.

A página de contato usa o recurso [Formspree](https://formespree.io), você precisa ter uma conta no serviço e adicionar seu **email** ao arquivo `_data/informations.yml`. Além disso, todo o conteúdo do arquivo `_data/informations.yml` deve ser alterado conforme a gosto.

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

* Fornecedores:
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
    - Endpost [Vria uma linha horizontal]

## Requerimentos

| Requerido       | Como verificar      | Como instalar  |
| --------------- | ------------------- | -------------- |
| Git             | `git --version`     | [Git](http://git-scm.com/) |
| Ruby            | `ruby -v`           | [Ruby](https://www.ruby-lang.org) |
| Gem             | `gem -v`            | **Ruby** contains **Gem** |
| Bundler         | `bundler -v`        | `gem install bundler` |
| Yarn            | `yarn -v`           | [Yarn](https://yarnpkg.com/en/docs/install) |

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

3 - Projeto de compilação para deploy:

```
$ yarn build
```
ou
```
$ bundle exec jekyll b
```

4 - Iniciando o serviço Jekyll:

```
$ yarn serve
```
ou
```
$ bundle exec jekyll s
```

## Arquivo 'index.md'

Agora a homepage está no arquivo "**index.md**" na pasta raiz do projeto. Escreva uma boa abertura.

## Pasta 'assets'

Essa pasta contém subpastas onde algumas você não precisa fuçar amiguinho, com por exemplo a pasta **css**, **js**, **vendor** e **json**. A pasta **images** por contrário, você deve colocar as imagens para seu website. Cada subpasta da pasta **images** é autoexplicativa.

## Pasta '_pages'

As páginas são encontradas na pasta **_pages/blogger** e **_pages/global**.
A pasta **_pages/blogger** está contido páginas do Blog e a pasta **_pages/global**, é pasta onde está contido a página **about.md** e **projects.md**.

Caso você não queira trabalhar com as páginas **about.md** e **projects.md**, o recomendável é deixar a propriedade **published** para **false**. *NUNCA EXCLUA PÁGINAS DA PASTA **blogger** e **global***, pois elas tem propriedades únicas que um página normal pode não conter.

Se você não quiser ter um Blog no seu website, então você deve configurar no arquivo
**_data/options.yml**, onde você terá mais informação na seção [Configurações de opções]().

Para criar um página é muito simples. Usando o comando a seguir, você cria o cabeçalho de uma página no diretório **_pages**, onde deve ficar todos suas páginas criadas.

### Criando uma página

```shell
$ yarn page
```

As páginas criadas por você, pode aparecer ou não no menu do seu site. Basta você configurar o cabeçalho que se parece com esse:

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

Na propriedade **icon** você pode deve colocar o icone do [FontAwesome](https://fontawesome.com/icons) que esteja relacionado com sua página criado, ou simplesmente deixar em branco.

A propriedade **order**, você pode colocar um número que (de acordo com as outras páginas), para ordernar no menu do website.

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

Essa pasta é onde ficar toda estrutura do template. Bocê não precisa alterar em nada nessa pasta, a não ser que queira corromper o tema. :)

## Pasta 'vendor'

Essa pasta terá todas as dependências para seu template ser gerado e funcionar. Ela é criada e preenchida com o comando `yarn install`. Não delete ela.

## Arquivos do template que você NÃO precisa alterar

- Gemfile
- package.json
- Rakefile
- .yarnrc

## Configurações

Bom, agora que você ja sabe sobre algumas pastas e arquivos, vamos entender como configurar o Typing para seu gosto. Vamos lá.

### Arquivo '_config.yml'

O primeiro arquivo que você de abrir para configurar é o **_config.yml**. Nesse arquivo você terá algumas indicação de blocos que devem ser alterados, mas basicamente você deve alterar a propriedade **url** e **baseurl**.

Em **url** você informa a url do seu domínio. Por exemplo:

```yml
url: http://mysite.com
```

Em **baseurl** você informa a subpasta cada seu website está (caso esteja). Por exemplo:

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

Algumas configurações básicas que você irá fazer nesse arquivo é de:

#### Trocar o avatar

Você deve informar o nome do seu avatar, que deve estar na pasta **assets/images/avatar** na seguinte propriedade:

```yml
sidebar:
  avatar:
    img: "your_first_photo_avatar.png"
    flip:
      img: "your_second_photo_avatar.png"
```

O avatar tem uma animação de Flip, onde você deve informar uma segunda imagem na propriedade **flip -> img**.

#### Trocar o tema

Esse é um dos recursos mais legais do Typing, que é poder alterar entre vários temas de uma maneira rápida, e até mesmo [customizar](#criando-seu-proprio-tema) um (caso você sair um pouco de CSS/SCSS). Vamos lá.

Por padrão, o Typing vem 5 (cincos) temas oficiais, eles são:

- typing
- whiteglass
- cloudysky
- hacking
- littlegirl

Para usar algum tema, basta alterar a propriedade **theme** no arquivo **'_data/informations.yml'**:

```yml
website:
  ....
  theme: "typing"
```

Conheça o rosto dos temas:

##### Typing
##### Whiteglass
##### Cloudysky
##### Hacking
##### Littlegirl

#### Criando seu proprio tema

Você também terá o arquivo **_src/_sass/theme/custom.scss**, onde você pode criar um tema próprio sem alterar os oficiais do Typing.

> NOTA: Essa é uma opção não muito comum, só altere arquivos do template caso você saiba o que esta fazendo.

### Arquivo '_data/options.yml'

Esse arquivo contém opções de ativar e desativar recursos do Typing. Nesse arquivo basicamente você deve aterar conforme seu gosto.

Uma das coisas que você pode não querer, é um website sem blog, nesse caso você deve deixar a propriedade abaixo para **false**

```yml
blog:
  enable: false
```
Após alterar essa propriedade, você deve alterar no arquivo **_pages/blogger/blog.md** a seguinte propriedade para **false**:

```yml
menu:
  enable: false
```

Assim o link **Blog** não vai aparecer no menu.



## Custom

### Resources

In the file "**_config.yml**" contains a session where you can activate and deactivate some features of the template. By the way
, everything to remove from the template, is in this file and what is related to appearance, is in the file "**_data/data.yml**".

**Disqus**

To have the comments feature, you must inform your Disqus user in file "**_data/data.yml**":

```yaml
userdata:
  disqus:
    username: "myname"
```

> NOTE: Only the comment feature will appear, if the Jekyll environment is production, not development, that is, when executing the command "bundle exec jekyll b".  

### Appearance

**Typing**

![Typing](https://raw.githubusercontent.com/williamcanin/typing-jekyll-template/master/README/images/typing.png)

**Whiteglass**

![Whiteglass](https://raw.githubusercontent.com/williamcanin/typing-jekyll-template/master/README/images/whiteglass.png)

**Hacking**

![Hacking](https://raw.githubusercontent.com/williamcanin/typing-jekyll-template/master/README/images/hacking.png)

**Littlegirl**

![Littlegirl](https://raw.githubusercontent.com/williamcanin/typing-jekyll-template/master/README/images/littlegirl.png)

**Custom** (This is not a theme, just for you to customize to taste.)

![Custom](https://raw.githubusercontent.com/williamcanin/typing-jekyll-template/master/README/images/custom.png)


You can change the colors of the Typing Jekyll Template with a simple line changes. In the "**_data/data.yml**" file, change the "`website => theme`" property as listed the themes available in the comment. Example:

```yaml
website:
  theme: "whiteglass"
```
If you want to customize the theme, choose "**custom**" and customize the style sheet "**_sass/theme/custom.scss**" to your liking.

Currently, there are 4(four) that *Typing* supports:

- typing (default)
- hacking
- whiteglass
- littlegirl


Feel free to configure as you want. :)


## Date and 'Reading time' Language

Typing has the language setting for the date and a message in the post for read time. These settings are available in the "**_config.yml**"


### Reading time

To change the phrase of Reading time, go to the section 'To see language support, go to the plugin '_plugins/reading_time.rb'', change the value of 'reading_time > locale' to your locality*.

 E.g: 
```yaml
 reading_time:
        locale: en_US
```

### Datelang

To change the date language to extensive, search for the section 'To see language support, go to the plugin '_plugins/datelang.rb'' ', change the value 'datelang > locale' to your locality*.

Change the 'datelang > reload' to 'true', compile the project (./init.sh build or bundle exec jekyll build). After compiling, return the value of 'datelang > reload' to 'false'.

 E.g:
```yaml
 datelang:
        locale: en_US
        reload: true
```

* The languages supported are:

    * ch_CH - Chinese
    * de_DE - Deutschland 
    * en_US - English
    * es_ES - Spanish
    * fr_FR - French
    * it_IT - Italian
    * ja_JP - Japan
    * pt_PT - Portuguese
    * ru_RU - Russian

## Post and Page

You can create posts and page headers with only one line in the terminal.

post:

```bash
$ bundle exec rake post TITLE="My title"
```

page:

```bash
$ bundle exec rake page TITLE="My title"
```

If you use unix / darwin, you can use the script "*init.sh help*".

## Demo

If you want to see the project in action, go here > [Demo](http://williamcanin.github.io/typing-jekyll-template/)

## Questions

Make your opinions on Typing Jekyll Template, in:
[Typing Jekyll Template - Issues](https://github.com/williamcanin/typing-jekyll-template/issues)

## Versions

You can download the versions without making a clone with Git. Go to [Releases](https://github.com/williamcanin/typing-jekyll-template/releases)

## License and Copyrights

License: [MIT License (MIT)](https://opensource.org/licenses/MIT)

Copyrights: William C. Canin | Copyright © 2017-2018

*You can change the structure of Typing Jekyll Template as you wish, as long as you do not manipulate the copyrights of William C.Canin in the project*

## Credits

* Name: William C. Canin
* Country: Brazil - SP
* EMail: william.costa.canin@gmail.com    
* GitHub: [William Canin](http://github.com/williamcanin)
* Home page: [William Canin](http://williamcanin.github.com)
