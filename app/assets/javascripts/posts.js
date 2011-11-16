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
	
	$('.post').hover(function() {
		post_id = this.id.split("_").splice(2,2,"")[1];
		band_id = this.id.split("_").splice(0,2,"")[1];
		$(".arrow_posts").hide();
		$(this).find(".arrow_posts").show();
	});
		
	$('.post').click(function() {
		post_id = this.id.split("_").splice(2,2,"")[1];
		band_id = this.id.split("_").splice(0,2,"")[1];
	 	$('#postzoom').load("/bands/" + band_id + "/posts/" + post_id);
		$('.post').removeClass("post_selected");
		$(this).addClass("post_selected");
		$('.post').find(".arrow_posts").animate({
				right: "15px",
			}, 100);
		$(this).find(".arrow_posts").animate({
				right: "0px",
			}, 100);
	});
	
	$('#posts').mouseleave(function() {
		$(".arrow_posts").hide();
	});
	








});