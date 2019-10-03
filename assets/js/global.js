---
layout: null
---

$(document).ready(function() {
	$('.scrolltop__button').click(function(){
		$('html, body').animate({scrollTop:0}, 'slow');
		return false;
	});
});