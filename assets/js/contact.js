---
layout: null
---

/*Include Data Base*/
{% include liquid/data %}

$(function($){
	$("#layout_contact__form").submit(function(event) {
		event.preventDefault();
		$.ajax({
	    url: "https://formspree.io/{{ load_data.userdata.email | encode_email }}", 
	    method: "POST",
	    data: {
            name: $("#name").val(),
            subject: $("#subject").val(),
	    	email: $("#email").val(),
	    	message: $("#message").val()
	    },
	    dataType: "json"
		}).done(function(){
            $("#name").val("");
            $("#subject").val("");
			$("#email").val("");
			$("#message").val("");
            $("#email_successfully_sent").modal("show");
		}).fail(function(){
			$("#email_failed_sent").modal("show");
		});
	});
}) ;
