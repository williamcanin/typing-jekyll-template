---
layout: null
---

jQuery(document).ready(function($) {
  $("#btn-print").click(function() {
    window.print();
    return false;
  });
});