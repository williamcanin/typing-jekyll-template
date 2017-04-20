---
layout: null
---

jQuery(document).ready(function($) {
  /* Cursor (pipe) flashing in the page Hello */
  setInterval(function() {
    $(".cursor").toggle()
  },600);
});
