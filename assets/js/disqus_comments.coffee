---
---

# Using Coffeescript
{% include liquid/data %}

disqus_config = ->
    this.page.url = '{{ page.url | absolute_url }}'
    this.page.identifier = '{{ page.url | absolute_url }}'
    false

->
    d = document
    s = d.createElement 'script'
    s.src = 'https://{{ load_data.userdata.disqus.username }}.disqus.com/embed.js'
    s.setAttribute 'data-timestamp', +new Date()
    (d.head || d.body).appendChild(s)
    false

# Using Javascript
# /*Include Data Base*/
# {% include liquid/data %}

# var disqus_config = function () {
#   this.page.url = '{{ page.url | absolute_url }}';
#   this.page.identifier = '{{ page.url | absolute_url }}';
# };

# (function() {
#   var d = document, s = d.createElement('script');

#   s.src = 'https://{{ load_data.userdata.disqus.username }}.disqus.com/embed.js';

#   s.setAttribute('data-timestamp', +new Date());
#   (d.head || d.body).appendChild(s);
# })();
