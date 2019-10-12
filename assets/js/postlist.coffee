---
---

{% include liquid/data %}

## Using Coffescript 
{% if jekyll.environment == 'production' and load_data.userdata.disqus.username %}
    disqus_shortname = '{{ load_data.userdata.disqus.username }}'

    -> 
        s = document.createElement 'script'
        s.async = true
        s.type = 'text/javascript'
        s.src = '//' + disqus_shortname + '.disqus.com/count.js'
        (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s)

{% endif %}

## Using Javascript 
# {% if load_data.userdata.disqus.username %}
#     var disqus_shortname  = '{{ load_data.userdata.disqus.username }}';

#     (function () {
#         var s = document.createElement('script'); s.async = true;
#         s.type = 'text/javascript';
#         s.src = '//' + disqus_shortname + '.disqus.com/count.js';
#         (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);

#     }());
# {% endif %}
