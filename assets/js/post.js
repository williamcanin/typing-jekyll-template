(function() {
  $('#markdown-toc').hover(function() {
    return $(this).attr('data-content', 'Table of Content');
  });

  $("#markdown-toc a").click(function() {
    return $('html, body').animate({
      scrollTop: $(this.hash).offset().top
    }, 500);
  });

  $("#comments_in_post").click(function() {
    event.preventDefault();
    return $('html,body').animate({
      scrollTop: $(this.hash).offset().top
    }, 500);
  });

}).call(this);
