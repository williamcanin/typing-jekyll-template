# Typing Jekyll Template

**Typing Jekyll Template**, is a template for [Jekyll](http://jekyllrb.com) built especially for those who want to have a blog and pages quickly and lightly. Keep It Simple, my friend!

![Typing Jekyll Template](https://raw.githubusercontent.com/williamcanin/typing-jekyll-template/master/screenshot.png)

## Table of Contents

* [Introduction](https://github.com/williamcanin/typing-jekyll-template/#introduction)
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

Its interface is part of the "Keep It Simple" philosophy, precisely to have a high performance in all types of browsers and mobile devices.

You already have a template page for ‘Blog’, ‘Projects’, ‘Search’, ‘Contact’, ‘Tags’ and ‘Resume’, but you can leave as you want, modifying strings.

The 'resume' page, you can print using the browser's Ctrl + P shortcut or the push button. Printing will eliminate useless parts, such as the sidebar. You'll also have a template for post (welcome-tot-jekyll), and you'll have to follow that template header.

The contact page uses the [Formspree](https://formespree.io){: target="_blank"} feature, you will need to have an account in the service and add your **e-mail** to the `_data/data.yml` file. In addition, the entire contents of the `_data/dbase.yml` file should be changed as needed.

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

* Vendors:
    - jekyll-coffeescript
    - jekyll-jsminify
    - jekyll-paginate
    - jekyll-gist
    - jekyll-youtube
    - jekyll-tagging
    - jemoji
    - jekyll-email-protect
    - jektify
* From the project itself:
    - Readingtime [Estimated reading time]
    - Imager [Responsive Images]
    - DateLang [Complete dates in each languages]
    - Label [Add labels]
    - Endpost [Creates a horizontal line]

## Requeriments

| Requerid        | How to check        | How to install  |
| --------------- | ------------------- | -------------- |
| Git             | `git --version`     | [Git](http://git-scm.com/) |
| Ruby            | `ruby -v`           | [Ruby](https://www.ruby-lang.org) |
| Gem             | `gem -v`            | **Ruby** contains **Gem** |
| Python          | `python --version`  | [Python](https://www.python.org/) |
| Bundler         | `bundler -v`        | `gem install bundler` |

## Usage

1 - Cloning and entering the folder:

```
$ git clone https://github.com/williamcanin/typing-jekyll-template.git "my-site"
$ cd "my-site"
```

2 - Downloading Gems and Jekyll dependencies for Typing:

```
$ bundle install
```

3 - Compiling project for deploy:

```
$ JEKYLL_ENV=production bundle exec jekyll b
```

4 - Starting Jekyll serve:

```
$ JEKYLL_ENV=development bundle exec jekyll s
```

**O.S Unix**

If you use a Unix O.S, you can perform from step 2, all action through the `init.sh` file. Type it:

```
$ bash init.sh help
```

## Structure

### Home pages

Now the home page is in the "**index.md**" file in the project root folder. Write a good opening.

### Pages Blog / Tags / Search / Sent

The description of the Blog, Tags and Search pages are in their respective folders in the "**index.md**" file:

- blog/index.md
- blog/tags/index.md
- blog/search/index.md

Edit the values of the properties as desired.

The same goes for the contact sending page.

- contact/send/index.md

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
