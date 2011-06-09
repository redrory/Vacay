// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() { 
	
	$('a[id = "maxVacay"]').click(function(){
		
		$('#MV').show('slow');
		$('#MS').hide('slow');
		$('#AV').hide('slow');
	});
	
	$('a[id = "maxSick"]').click(function(){
	
		$('#MV').hide('slow');
		$('#MS').show('slow');
		$('#AV').hide('slow');

	});
	
	$('a[id = "anniversary"]').click(function(){
	
		$('#AV').show('slow');
		$('#MV').hide('slow');
		$('#MS').hide('slow');

	});
		
});
