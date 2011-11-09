// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})


$(document).ready(function() {
 
	// $("#band_menu ul li:nth-child(2)").click(function() {
	// 				$(".triangle").css("margin-left", "100px");
	// 			});
	
	// $("#section_head_bg").mouseover(function() {
	// 		$(this).css("background", "#ababab");
	// 	});
	
	$(".select_arrow, .section_head").click(function() {
		$("#band_selector").show();
		$("#section_head_bg").css("background", "white");
	});
	
	$("#band_selector").mouseout(function() {
		$(this).hide();
		$("#section_head_bg").css("background", "");
	});
	
	


});









