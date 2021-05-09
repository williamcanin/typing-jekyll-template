---
---

#  Load data
{% include liquid/data %}


$('#submit').click ->
  $('#name').val('')
  $('#subject').val('')
  $('#email').val('')
  $('#message').val('')
  return

###### DEPRECATED #########

# Using Coffeescript

# {% if load_data.website.content.contact.formspree.plan != 'free' %}
#     ($) ->
#         $('form').submit (e) ->
#             event.preventDefault()
#             $.ajax
#                 url: 'https://formspree.io/f/{{ load_data.website.content.contact.formspree.endpoint }}'
#                 method: 'POST'
#                 data: {
#                     name: $('#name').val()
#                     subject: $('#subject').val()
#                     email: $('#email').val()
#                     message: $('#message').val()
#                 }
#                 dataType: 'json'
#             .done ->
#                 $('#name').val('')
#                 $('#subject').val('')
#                 $('#email').val('')
#                 $('#message').val('')
#                 $('#email_successfully_sent').modal('show')
#             .fail ->
#                 $('#email_failed_sent').modal('show')
#         false
# {% else %}
#     if location.href.indexOf("{{ '/contact/#email_successfully_sent' | prepend: site.baseurl | prepend: site.url }}") == 0
#         $("#email_successfully_sent").modal "show"
#         $('#email_successfully_sent').on 'hidden.bs.modal', ->
#             document.location.href = String(document.location.href).replace '#email_successfully_sent', ''
#             false
# {% endif %}

# Using Javascript

# {% if load_data.website.content.contact.formspree.plan != 'free' %}

# $(function($){
#  	$("form").submit(function(event) {
#  		event.preventDefault();
#  		$.ajax({
#  	    url: "https://formspree.io/{{ load_data.userdata.email | encode_email }}",
#  	    method: "POST",
#  	    data: {
#              name: $("#name").val(),
#              subject: $("#subject").val(),
#  	    	email: $("#email").val(),
#  	    	message: $("#message").val()
#  	    },
#  	    dataType: "json"
#  		}).done(function(){
#              $("#name").val("");
#              $("#subject").val("");
#  			$("#email").val("");
#  			$("#message").val("");
#              $("#email_successfully_sent").modal("show");
#  		}).fail(function(){
#  			$("#email_failed_sent").modal("show");
#  		});
#  	});
#  }) ;

#  {% else %}

#  if (location.href.indexOf("{{ '/contact/#email_successfully_sent' | prepend: site.baseurl | prepend: site.url }}") === 0) {
#  	$('#email_successfully_sent').modal('show');
#  	$("#email_successfully_sent").on("hidden.bs.modal", function () {
#  		document.location.href = String( document.location.href ).replace( "#email_successfully_sent", "" );
#  	});
#  }

# {% endif %}

###### DEPRECATED #########
