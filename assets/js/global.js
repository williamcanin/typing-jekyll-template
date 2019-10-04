---
layout: null
---

jQuery(document).ready(function() {
	$('.scrolltop__button').click(function(){
		$('html, body').animate({scrollTop:0}, 'slow');
		return false;
	});
	$("#comments_in_post").click(function(event){     
        event.preventDefault();
        $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
    });
});
