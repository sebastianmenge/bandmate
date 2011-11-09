$(document).ready(function() {
 
	$("#new_post").submit(function() {
		$('#post_button').attr('disabled', 'disabled');
		$('#post_button').attr('value', 'Wait!');
   		$.post($(this).attr("action"), $(this).serialize(), null,  "script" );
		return false;
	});
	
	$('#post_button').attr('disabled', 'disabled');
	
	$('textarea').bind('notext', function () {
	  $('#post_button').addClass('disabled').attr('disabled', 'disabled');
	});
	
	$('textarea').bind('hastext', function () {
	  $('#post_button').removeClass('disabled').attr('disabled', false);
	});

	$("textarea").focus(function() {
		$("textarea").animate({
	    	height: "70px",
	  		}, 100 );
		$("#post_button").show();
	});
	
	$("#posts").click(function() {
		$("textarea").animate({
	    	height: "18px",
	  		}, 100 );
			$("#post_button").hide();
	});
	
	// $('.post').hover(function() { 
	// 	$("#arrow_posts").show();
	// });
		
	$('.post').click(function() { 
	 	post_id = this.id.split("_")[1];
	 	$('#postzoom').load("/bands/1/posts/" + post_id);
		$('.post').removeClass("post_selected");
		$("#post_" + post_id).addClass("post_selected");
	});
	








});