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
	
	// $(".select_arrow, .section_head").toggle( 
	// 	function () { 
	//         	$("#band_selector").animate({top: "+70px"}, 200, "swing");
	//         }, 
	//     function () { 
	//         	$("#band_selector").animate({top: "-70px"}, 500, "swing");
	//      	} 
	// );
	// 
	// $("html").click(function(){ 
	//     $("#band_selector:visible").animate({top: "-70px"}, 500, "swing");
	// });
	
	var bandSelectorOpen = false;
	
	function toggleBandSelector(closeOnly) {
	  if (closeOnly == null) closeOnly = false;
	  if (bandSelectorOpen == false && closeOnly == false) {
	    $("#band_selector").animate({top: "+70px"}, 200, "swing");
	    bandSelectorOpen = true;
	  } else {
	    $("#band_selector").animate({top: "-200px"}, 300, "swing");    
	    bandSelectorOpen = false;
	  }
	}

	$(".select_arrow, .section_head").click(function() {
	  toggleBandSelector(); 
	  return false;
	}); 

	$("html").click(function(){ 
	  toggleBandSelector(true)
	});
	


});









