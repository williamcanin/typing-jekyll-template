---
layout: null
---

/*Include Data Base*/
{% include dbase/dbase %}

{% if dbase.userdata.disqus.username %}
    var disqus_shortname  = '{{ dbase.userdata.disqus.username }}';

    (function () {
        var s = document.createElement('script'); s.async = true;
        s.type = 'text/javascript';
        s.src = '//' + disqus_shortname + '.disqus.com/count.js';
        (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);

    }());
{% endif %}