$(document).ready(function() {
	
	// Converts RGB to HEX //
	
	function rgb2hex(rgb) {
	 rgb = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
	 function hex(x) {
	  return ("0" + parseInt(x).toString(16)).slice(-2);
	 }
	 return "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]);
	}
	
	// Center Objects //
	
	widthFS = $(window).width() / 2 - 175 + 'px';
	
	widthFarben = $(window).width() / 2 - 58 + 'px';

    $(window).load(function () { 
      $('#farbselektor').css('left', widthFS)
    });

	$(window).load(function () { 
      $('#farben').css('left', widthFarben)
    });
	
	// Farbselektor scripts //
	
	$('#farben').click(function() {
		$("#farbselektor").animate({
			bottom: "0px"}, 300, 'swing');
		$.farbtastic('#colorpicker').linkTo('#bgcolor, #yield').setColor(rgb2hex(colorbg));
		$('#bgcolor').css("background-color", colorbg);
		$('#maincolor').css("background-color", colormain);
	});
	
	$('#cancel').click(function() {
		$("#farbselektor").animate({
			bottom: "-350px"}, 300, 'swing');
		$('#public_container').css("background-color", colormain);
		$('#yield').css("background-color", colorbg);
	});
	
	var colorbg = $('#yield').css("background-color");
	var colormain = $('#public_container').css("background-color");
	
	$('#bgcolor').focus(function(){
		$.farbtastic('#colorpicker').linkTo('#bgcolor, #yield').setColor();
	});
	
	$('#maincolor').focus(function(){
		$.farbtastic('#colorpicker').linkTo('#maincolor, #public_container');
		$.farbtastic('#colorpicker').color;
	});
	
	$('#reset').click(function() {
		$.farbtastic('#colorpicker').linkTo('#maincolor, #public_container').setColor('#898989');
		$.farbtastic('#colorpicker').linkTo('#bgcolor, #yield').setColor('#898989');
		$('#bgcolor').css("background-color", "#898989");
		$('#maincolor').css("background-color", "#ffffff");
		$('#public_container').css("background-color", "#ffffff");
		$('#maincolor').val('#ffffff');
	});
	
	
	
	
	
	
	
	
	
	

});