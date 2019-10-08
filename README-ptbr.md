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

**NOTA: O Typing Jekyll Template não é compatível com a compilação atômica no Github Pages devido ao seu próprio recurso de plug-ins e a algumas configurações que o tema disponibiliza. Você precisa executar o clone do projeto em sua máquina, compilar o site e implantá-lo nas páginas do Github.**

Sua interface faz parte da filosofia "Keep It Simple", precisamente para ter um alto desempenho em todos os tipos de navegadores e dispositivos móveis.

Você já tem uma página de modelo para "Blog", "Projetos", "Pesquisa", "Contato", "Tags" e "Resumo", mas pode sair como quiser, modificando as strings.

Na página 'resume', você pode imprimir usando o atalho Ctrl + P do navegador ou o botão. A impressão eliminará peças inúteis, como a barra lateral. Você também terá um modelo para postagem (welcome-tot-jekyll) e precisará seguir o cabeçalho desse modelo.

A página de contato usa o recurso [Formspree] (https://formespree.io), você precisa ter uma conta no serviço e adicionar seu ** email ** ao arquivo `_data/informations.yml`. Além disso, todo o conteúdo do arquivo `_data/informations.yml` deve ser alterado conforme a gosto.



## Feature

- [x] **Google Analytics**
- [x] **Google Fonts**
- [x] **Jekyll Search on Blog Page**
- [x] **Print page resume**
- [x] **Avatar on sidebar**
- [x] **404 Error Page**
- [x] **Disqus [Accountant and Comments]**
- [x] **Social buttons**

**Used plugins**:

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
    - Readingtime [Estimated reading time]
    - Imager [Responsive Images]
    - DateLang [Complete dates in each languages]
    - Badge [Add badges]
    - Endpost [Creates a horizontal line]

## Requerimentos

| Requerido       | Como verificar      | Como instalar  |
| --------------- | ------------------- | -------------- |
| Git             | `git --version`     | [Git](http://git-scm.com/) |
| Ruby            | `ruby -v`           | [Ruby](https://www.ruby-lang.org) |
| Gem             | `gem -v`            | **Ruby** contains **Gem** |
| Bundler         | `bundler -v`        | `gem install bundler` |
| Yarn            | `yarn -v`           | [Yarn install](https://yarnpkg.com/en/docs/install) |

## Usando

1 - Clonando e entrando na pasta:

```
$ git clone https://github.com/williamcanin/typing-jekyll-template.git "my-site"
$ cd "my-site"
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

## Página inicial

Agora a homepage está no arquivo "**index.md**" na pasta raiz do projeto. Escreva uma boa abertura.

## _pages

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

## _posts

A pasta **_posts** é onde você colocará todas suas postagens. Para criar uma postagem, é tão simples quanto criar uma página. Basta executar o comando abaixo:

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

## Deploy

Your site will be generated in the `_site` folder. Deploy these files to your hosting server.

**Note:** Before deploying to the server, you have to edit the
Variables: **url** and **baseurl** in the `_config.yml` file according to url Where your site is crooked. You can get more information on how to set up at: [Jekyll Configuration](https://jekyllrb.com/docs/configuration/#serve-command-options)

### Deploy GitHub

After doing all the configuration, compile the project with the command "bundle exec jekyll b" and your project can already be sender to your hosting server.

**O.S Unix**

If you use a UNIX-based operating system, you can deploy the source code and compiled site very simply with the "init.sh" script.
You must first configure the "**deploy.conf**" file for your repository settings.

I) After performing the project clone, empty the factory settings with the "reset" command:

**[NOTE IMPORTANT]: Be careful when using this option because it deletes everything that has already been configured. If you do this after you have set up the Git repository (.git), you may need to manually reconcile the GIT commands with pull and fetch. The "init.sh" script does not resolve this issue.**

```
$ bash init.sh reset
```

II - *deploy.conf*

[GENERAL]

* **remoteURL** - Put here the git's remote URL.
* **commit** - Customize the first commit message. By default, you will add the committee date and time.
* **pull** - If left with the value of "yes", the pull will be performed before the push.

[ BRANCH CONFIG NAMES ]

* **source** - Put the branch where the project source code file will be.
* **built** - Put the compiled website branch.

[ BEFORE RAISING THE SITE ]

* **compile** - Before deploying the compiled site, it will compile the project. Leave it as "yes" if you want to do this.

III - Commands:

2) Deploy source files:

```
$ bash init.sh deploy:source
```

3) Deploy the built site:

```
$ bash init.sh deploy:site
```

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
