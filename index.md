---
layout: hello
title: Typing
menu:
  enable: false
  local: [null]
published: true
script: [hello.js]
---


Hey, I'am [Typing](https://github.com/williamcanin/typing-jekyll-template){: target="_blank"}. I'm a theme [Jekyll](https://jekyllrb.com){: target="_blank"} Inspired by the habit of typing. Using an appearance that resembles the typewriter. A simple, fast and efficient way of reading, just like the old days.

'Typing' is intended for users with more technical content than for users who wish to have a stylish page. Keep it simple!

{% for last_post in site.posts limit:1 %}
See the last post: "<a href="{{site.url}}{{site.baseurl}}{{last_post.url}}">{{last_post.title}}</a>". {% endfor %}

**Let's get some details:**

This page exists to put everything about you, as if it were a simplified 'About'. The file for editing this page is in the directory root: `index.md`.

You already have a template page for 'Blog', 'Projects', 'Search', 'Contact', 'Tags' and 'Resume', but you can change as you want, modifying property values.
