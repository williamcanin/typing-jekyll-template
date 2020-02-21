[Leia em Português](README-ptbr.md)

# Typing

![Jekyll site CI](https://github.com/williamcanin/typing-jekyll-template/workflows/Jekyll%20site%20CI/badge.svg?branch=master) ![GitHub release (latest by date)](https://img.shields.io/github/v/release/williamcanin/typing-jekyll-template?style=flat-square) [![Build Status](https://travis-ci.org/williamcanin/typing-jekyll-template.svg?branch=master)](https://travis-ci.org/williamcanin/typing-jekyll-template) ![GitHub](https://img.shields.io/github/license/williamcanin/typing-jekyll-template?style=flat-square) ![GitHub repo size](https://img.shields.io/github/repo-size/williamcanin/typing-jekyll-template?style=flat-square) ![](https://img.shields.io/github/languages/top/williamcanin/typing-jekyll-template.svg?colorB=blue&style=flat-square) ![](https://img.shields.io/github/commit-activity/y/williamcanin/typing-jekyll-template.svg?style=flat-square) ![](https://img.shields.io/github/last-commit/williamcanin/typing-jekyll-template/master.svg?style=flat-square) ![](https://img.shields.io/github/watchers/williamcanin/typing-jekyll-template.svg?style=flat-square) ![](https://img.shields.io/github/stars/williamcanin/typing-jekyll-template.svg?style=flat-square) ![](https://img.shields.io/github/forks/williamcanin/typing-jekyll-template.svg?style=flat-square)

![Typing Change Themes](https://raw.githubusercontent.com/williamcanin/typing-jekyll-template/master/_src/doc/readme/images/change_themes.gif)

## Introduction

**Typing**, is a template for [Jekyll](http://jekyllrb.com) created especially for those who want to have a blog and pages quickly and lightly. Keep things simple, my friend!

Its interface is part of the "Keep It Simple" philosophy, precisely for high performance on all types of browsers and mobile devices.

You already have a template page for "Blog", "Projects", "Search", "Contact", "Tags", "Summary", "404" and "About", but you can change it as you wish by modifying the strings.

On the **resume.md** page, you can print using the browser shortcut Ctrl + P or the button. Printing will eliminate useless parts such as the sidebar.

You will also have a template for posting to the "" welcome-to-jekyll.md "** file and will need to follow the header of that template. The file contains some information you can get to use on your website.

The contact page (**_ pages/global/contact.md**) uses the feature [Formspree](https://formspree.io), you need to have an account on the service and add your **email** to the file **_data/informations.yml**.

```yml
userdata:
  email: "youremail@domain.com"
```

Then you must change the type of plan you have in [Formspree](https://formspree.io) in the option:

```yml
website:
  ...
  content:
    ...
    contact:
      formspree:
        plan: "free|paid"
```


NOTE: The **paid** plan, where the form will be sent via AJAX, which will return a success or failure response, whether the email was delivered or not. The **free** plan, will not have a failed return if the message is not sent successfully. You can learn more at: [Formspree Plans](https://formspree.io/plans)

In addition, all contents of the **_data/informations.yml** file should be changed to suit your needs and needs.

> NOTE: Typing Jekyll Template does not support atomic compilation in Github Pages due to its own plug-in feature and some settings that the theme provides. You need to run the project clone on your machine, compile the site, and deploy it to the Github pages.

## Features

- [x] **Google Analytics**
- [x] **Google Fonts**
- [x] **Jekyll Search the blog page**
- [x] **Print on the resume page**
- [x] **Animated avatar on the sidebar**
- [x] **404 Error Page**
- [x] **Disqus [Accountant and Comments]**
- [x] **Social network buttons**
- [x] **Theme Options**
- [x] **Enable and disable features**

**Used Plugins:**

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
* From the project itself:
  - Readingtime [Estimated Reading Time]
  - Imager [Add image to post and pages]
  - DateLang [Complete dates in each language]
  - Badge [Add badges]
  - Endpost [Create a horizontal line]

## Requirements

| Required        | How to verify       | How to install  |
| --------------- | ------------------- | -------------- |
| Git             | `git --version`     | [Git](http://git-scm.com/) |
| Ruby            | `ruby -v`           | [Ruby](https://www.ruby-lang.org) |
| Gem             | `gem -v`            | **Ruby** contains **Gem** |
| Bundler         | `bundler -v`        | `gem install bundler` |
| Yarn            | `yarn -v`           | [Yarn](https://yarnpkg.com/en/docs/install) |
| Npm             | `npm -v`            | [Npm](https://www.npmjs.com/get-npm) |

## Using

1 - Cloning and entering the folder:

```
$ git clone https://github.com/williamcanin/typing-jekyll-template.git "my_site"
$ cd "my_site"
```

2 - Downloading Dependencies for Typing:

```
$ yarn install
```

> Note: If you experience problems with **yarn** during installation of the dependencies, you may also be using **npm** like this: `npm install`.

3 - Build project to deploy:

```
$ yarn build
```

4 - Starting the Jekyll Service:

```
$ yarn serve
```

## File '.hidden'

This file is specific to Linux systems, where are all files and folders that should be hidden so as not to visually pollute the project.

## File 'index.md'

Now the homepage is in the file "**index.md**" in the project root folder. Write a good opening.

## Folder 'assets'

This folder contains subfolders where some you don't need to fumble with, such as **css**, **js**, **vendor** and **json**. The folder **images** instead you should put the images to your website. Each subfolder of the **images** folder is self-explanatory.

## Folder '_pages'

The pages are found in the **_ pages/blogger** and **_ pages/global** folder.
The **_ pages/blogger** folder is contained in Blog pages and the **_ pages/global** folder is where **about.md** and **projects.md** page is contained.

If you do not want to work with the **about.md** and **projects.md** pages, we recommend leaving the **published** property to **false**. *NEVER DELETE FOLDER PAGES **blogger** and **global*** as they have unique properties that a normal page may not contain.

If you don't want to have a blog on your website then you should disable it in the archive **_data/options.yml**, where you will find more information in the section [Files '_data/options.yml'](#file-_dataoptionsyml).

To create a page is very simple. Using the following command, you create the header of a page in the **_ pages** directory, where all your created pages should be.

### Creating a page

```shell
$ yarn page
```

The pages you create may or may not appear in your website menu. Just set the header **menu -> enable** property that looks like this:

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

Some properties you should not change, such as **layout**, **date** and **menu -> location**.

In the **icon** property you can either put the icon [FontAwesome](https://fontawesome.com/icons) that is related to your created page, or simply leave it blank.

The property **order**, you can put a number that (according to the other pages), to sort in the website menu.

> Be sure to leave the **published** property to **true** for your page to appear.

## Folder '_posts'

The **_posts** folder is where you will put all your posts. Creating a post is as simple as creating a page.

### Creating a post

```shell
$ yarn post
```

You will enter an intuitive console to enter the title name of your post. When creating, the header will look something like this:

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

Some properties you should not change, such as **layout**, **data** and **script**.

The **excerpted** property is text that you must set (if you wish) to appear in the posts listing of your website.

The **day_quote** property is where you can put a phrase you like at the end of your post.

The **comments** property is to enable or disable comments on the post itself.

> Be sure to leave the **published** property to **true** for your post to appear.

## Folder 'public'

The **public** folder will be your entire compiled website. It will be the contents of this folder that you must upload to your hosting server.

## Folder '_src'

This folder is where the whole template structure is. You don't need to change anything in this folder unless you want to corrupt the theme. :)

## Folder 'vendor'

This folder will have all the dependencies for your template to be generated and work. It is created and populated with the **yarn install** command. Do not delete it.

## Template files you should NOT change or delete

- Gemfile
- package.json
- Rakefile
- .yarnrc
- .hidden

## Settings

Well, now that you know about some folders and files, let's understand how to configure Typing to your liking. Come on.

### Folder 'CNAME'

To learn about this file, read about CNAME records [HERE](https://support.google.com/a/answer/112037?hl=en)

### File '_config.yml'

The first file you open to configure is **_config.yml**. In this file you will have some indication of blocks that should be changed, but basically you should change the **url** and **baseurl** property only.

In **url** you enter the url of your domain. For example:

```yml
url: http://mysite.com
```

In **baseurl** you tell the subfolder your website is (if it is). For example:

```yml
baseurl: /site1
```

> NOTE: Do not put slash at the end.

It has the plugin settings [Jektify](https://jektify.github.io), you can also change to your liking.
Another setting you could do is in the **reading_time** and **datelang** properties, changing their *locale* to their language.

The supported languages for **reading_time** and **datelang** are:

- ch_CH - Chinese
- de_DE - Deutschland
- en_US - English
- es_ES - Spanish
- fr_FR - French
- it_IT - Italian
- ja_JP - Japan
- pt_PT - Portuguese
- ru_RU - Russian

Other changes you can make to **_ config.yml**:

Enables or disables blog pagination [default: true]:

```yml
pagination:
  enabled: true
```

> NOTE: If you want to disable the pager, after making the above settings, you have to go to page **_pages/blogger/blog.md** and leave **pagination -> enable** to **false**.

Changes the server port [default: 4000]:

```yml
port: 4000
```

Change server host [default: localhost]:

```yml
host: localhost
```

> The other property you do not need to dig through.

### File '_data/informations.yml'

The file **'_ data/informations.yml'** is a file that contains template information, most of which is the string that appears on the website. You should set the property values of this file to your liking.

Some basic settings you will make in this file are:

#### Change avatar

You must enter the name of your avatar, which should be in the folder **assets/images/avatar** in the following property:

```yml
sidebar:
  avatar:
    img: "your_first_photo_avatar.png|jpg"
    flip:
      img: "your_second_photo_avatar.png|jpg"
```

The avatar has a Flip animation, where you must enter a second image in the **flip -> img** property. If you do not want this animation, you can disable it by reading the section [File '_data/options.yml'](#file-_dataoptionsyml).

#### Change theme

This is one of the coolest features of Typing, which is that you can quickly switch between multiple themes, and even [customize](#creating-your-own-theme) one (if you know a bit of CSS/SCSS) . Come on.

By default Typing comes with 5 (five) official themes, they are:

- typing
- whiteglass
- cloudysky
- hacking
- littlegirl

To use a theme, simply change the **theme** property in the **'_ data/informations.yml'** file and then compile your project again:

```yml
website:
  ....
  theme: "typing"
```

##### Know the face of the themes

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

#### Creating your own theme

You will also have the file **_src/_sass/theme/custom.scss**, where you can create your own theme without changing Typing officers.

> NOTE: The folder **_src** may be hidden due to the file **.hidden**. With your file manager, show hidden files or open every project in a preferred text editor. Only change template files if you know what you are doing.

#### Comments on posts

Typing uses [Disqus](https://disqus.com) to embed comments on the blog. To have the comments feature, you must inform the user of the in the file "**_ data/_informations.yml**":

```yaml
userdata:
  disqus:
    username: "my_user_disqus"
```

> NOTE: The commenting feature will appear if the Jekyll environment is a production environment, not a development environment, ie when executing the **yarn build** command.

You can also enable or disable commenting for each post you make. In the post header, change the property:

```yaml
comments: true|false
```

### File '_data/options.yml'

This file contains options to enable and disable Typing features. In this file you should basically change as you like.

#### Disabling Blog

One of the things you might not want is a blogless website, in which case you should leave the property below to **false**:

```yml
blog:
  enable: false
```

After changing this property, you **MUST change** in the **_ pages/blogger/blog.md** file the following property to **false**:

```yml
menu:
  enable: false
```

So the link **Blog** will not appear in the menu.

#### Turning avatar features on and off

Another feature you may want to change is avatar animation. By default, FLIP animation is enabled. To disable this animation, you leave the low property with value of **false**:

```yml
sidebar:
  ...
  avatar:
    ....
    flip: false
```

If you don't want an avatar on your website, simply disable it in the option:

```yml
sidebar:
  ...
  avatar:
    enable: false
```

#### Enabling Terminal Simulator

Another feature Typing acquired was a terminal simulator on the homepage. This is a visual matter only, as the terminal is not real.

Mixing a project that resembles the past and at the same time the present.

To enable the terminal simulator on the home page, just leave the same settings below:

```yml
home:
  ...
  terminal:
    enable: true
```

Here's how this feature will behave in your project:

![Terminal](https://raw.githubusercontent.com/williamcanin/typing-jekyll-template/master/_src/doc/readme/images/terminal.png)

> There is much more functionality in the **_data/options.yml** file for you to explore :)

## Demo

If you want to see the project in action, click here. > [Demo](http://williamcanin.github.io/typing-jekyll-template/)

## Questions

Have your say about Typing Jekyll Template at:
[Typing Jekyll Template - Issues](https://github.com/williamcanin/typing-jekyll-template/issues)

## Versions

You can download versions without creating a clone with Git. Go to [Releases](https://github.com/williamcanin/typing-jekyll-template/releases)

## License and Copyrights

License: [MIT License (MIT)](https://opensource.org/licenses/MIT)

Copyright: William C. Canin | Copyright © 2017-2020

*Você pode alterar a estrutura do Typing Jekyll Template conforme desejar, desde que não manipule ou remova os direitos autorais de William C.Canin no projeto*


## Donation

If you liked my work, buy me a coffee <3

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=YBK2HEEYG8V5W&source)


## Credits

* Name: William C. Canin
* Country: Brazil - SP
* E-Mail: william.costa.canin@gmail.com
* GitHub: [William Canin](http://github.com/williamcanin)
* Personal page: [William Canin](http://williamcanin.github.com)
