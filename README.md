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

The page ‘resume’, you can print using the browser’s Ctrl + P shortcut. The printout will use the Open Sans font and will delete useless parts such as sidebar. You’ll also have templates for posts, and you’ll have to follow model the header the post’s.

The contact page uses the Formspree feature, you will need to have an account in the service and add your **e-mail** to the `_data / dbase.yml` file. In addition, the entire contents of the `_data / dbase.yml` file should be changed as needed.

## Feature

- [x] **Google Analytics (Event and Pageview)**
- [x] **Google Fonts**
- [x] **Jekyll Search on Blog Page**
- [x] **Print page resume**
- [x] **Avatar on sidebar and on Hello page**
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
    - jekyll-spotify-plugin
* From the project itself:
    - Readingtime [Estimated reading time]
    - Imager [Responsive Images]
    - DateLang [Responsive Images]

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
$ git clone https://github.com/williamcanin/typing-jekyll-template.git "typing-jekyll-template"
$ cd "typing-jekyll-template"
```

2 - Downloading Gems and Jekyll dependencies for Typing:

```
$ bundle install
```

3 - Compiling project:

```
$ bundle exec jekyll b
```

4 - Starting Jekyll serve:

```
$ bundle exec jekyll s
```

**O.S Unix**

If you use a Unix O.S, you can perform from step 2, all action through the `init.sh` file. Type it:

```
$ bash init.sh help
```

## Custom Appearance

You can change the colors of **Typing Jekyll Template** by editing the `_sass/base/_variables.scss` file, using the values of the variables contained in it.

If you want to change the font, change the values of the variables in the `_sass/base/_fonts.scss` file.

I was forgetting ... there are some extra themes in the `_sass/base/_variables.scss` file disabled. You can leave only one theme, and uncomment the same. 

Feel free to configure as you want. :)

## Deploy

Your site will be generated in the `_site` folder. Deploy these files to your hosting server.

**Note:** Before deploying to the server, you have to edit the
Variables: **url** and **baseurl** in the `_config.yml` file according to url Where your site is crooked. You can get more information on how to set up at: [Jekyll Configuration](https://jekyllrb.com/docs/configuration/#serve-command-options)

## Demo

If you want to see the project in action, go here > [Demo](http://williamcanin.github.io/typing-jekyll-template/)

## Questions

Make your opinions on Typing Jekyll Template, in:
[Typing Jekyll Template - Issues](https://github.com/williamcanin/typing-jekyll-template/issues)

## Versions

You can download the versions without making a clone with Git. Go to [Releases](https://github.com/williamcanin/typing-jekyll-template/releases)

## License and Copyrights

License: [MIT License (MIT)](https://opensource.org/licenses/MIT)

Copyrights: William C. Canin | Copyright © 2017

*You can change the structure of Typing Jekyll Template as you wish, as long as you do not manipulate the copyrights of William C.Canin in the project*

## Credits

* Name: William C. Canin 
* Country: Brazil - SP
* EMail: william.costa.canin@gmail.com    
* GitHub: [William Canin](http://github.com/williamcanin)
* Home page: [William Canin](http://williamcanin.github.com)