---
layout: null
---

/*Include Data Base*/
{% include liquid/data %}

// Add indice name in Markdown Toc
$('#markdown-toc').hover(function(){
    $(this).attr('data-content', '{{ load_data.website.content.post.markdown_toc.indice.text }}');
});

$("#comments_in_post").click(function(event){     
    event.preventDefault();
    $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
});

// Count comments
{% if load_data.userdata.disqus.username %}
    var disqus_shortname  = '{{ load_data.userdata.disqus.username }}';

    (function () {
        var s = document.createElement('script'); s.async = true;
        s.type = 'text/javascript';
        s.src = '//' + disqus_shortname + '.disqus.com/count.js';
        (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);

    }());
{% endif %}
