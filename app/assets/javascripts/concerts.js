$(document).ready(function() {
	
	$('#concert_eventdate').datepicker({ dateFormat: 'dd.mm.yy' });
	
	//$('#new_concerts').css({'height':(($(window).height())-103)+'px'});
	$('#all_concerts').css({'height':(($(window).height())-103)+'px'});
	$('#all_concerts').css({'width':(($(window).width())-590)+'px'});
	
	$('#street_view_container, #streetview_img').click(function () {
		$('#streetview_img').toggle();
	});

});