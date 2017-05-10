---
layout: null
---

jQuery(document).ready(function($) {

  /*Add 'ga' function from Google Analytics to certain site links. */
  $('.post > .row.content a').addClass('ga-event');
  $('.hello > .row.content a').addClass('ga-event');
  $('a.ga-event').attr('onclick', 'ga(\'send\',\'event\',\'LinkTo\',this.href,\'{{ site.url }}{{ site.baseurl }}\');');

});