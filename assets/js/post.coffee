---
---

{% include liquid/data %}

# Using Coffeescript
$('#markdown-toc').hover ->
    $(this).attr 'data-content', '{{ load_data.website.content.post.markdown_toc.indice.text }}'

$("#markdown-toc a").click ->
    $('html, body').animate {scrollTop:$(this.hash).offset().top}, 500

$("#comments_in_post").click ->
    event.preventDefault()
    $('html,body').animate {scrollTop:$(this.hash).offset().top}, 500

{% if jekyll.environment == 'production' and load_data.userdata.disqus.username %}
    disqus_shortname  = '{{ load_data.userdata.disqus.username }}'

    -> 
        s = document.createElement 'script'
        s.async = true
        s.type = 'text/javascript'
        s.src = '//' + disqus_shortname + '.disqus.com/count.js'
        (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s)

{% endif %}

# Using Javascript
# // Add indice name in Markdown Toc
# $('#markdown-toc').hover(function(){
#     $(this).attr('data-content', '{{ load_data.website.content.post.markdown_toc.indice.text }}');
# });

# $("#comments_in_post").click(function(event){
#     event.preventDefault();
#     $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
# });

# $("#markdown-toc a").click(function(event){
#     event.preventDefault();
#     $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
# });

# // Count comments
# {% if jekyll.environment == 'production' and load_data.userdata.disqus.username %}
#     var disqus_shortname  = '{{ load_data.userdata.disqus.username }}';

#     (function () {
#         var s = document.createElement('script'); s.async = true;
#         s.type = 'text/javascript';
#         s.src = '//' + disqus_shortname + '.disqus.com/count.js';
#         (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);

#     }());
# {% endif %}
