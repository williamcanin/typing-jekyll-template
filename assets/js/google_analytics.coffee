---
---

{% include liquid/data %}

# Using Coffeescript
if !window.doNotTrack == "1" or navigator.doNotTrack == "1" or navigator.doNotTrack == "yes" or navigator.msDoNotTrack == "1"
  ((i, s, o, g, r, a, m) ->
    i['GoogleAnalyticsObject'] = r
    i[r] = i[r] or ->
      (i[r].q = i[r].q or []).push arguments

    i[r].l = 1 * new Date()

    a = s.createElement(o)
    m = s.getElementsByTagName(o)[0]

    a.async = 1
    a.src = g
    m.parentNode.insertBefore a, m
    false
  ) window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga'
 
  ga 'create', '{{ load_data.website.google.analytics.id }}', 'auto'
  ga 'send', 'pageview'


# Using Javascript
# /*Include Data Base*/
# {% include liquid/data %}

# if(!(window.doNotTrack === "1" || navigator.doNotTrack === "1" || navigator.doNotTrack === "yes" || navigator.msDoNotTrack === "1")) {
#   (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
#   (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
#   m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
#   })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

#   ga('create', '{{ load_data.website.google.analytics.id }}', 'auto');
#   ga('send', 'pageview');
# }
