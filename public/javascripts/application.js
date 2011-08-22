// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(document).ready(function() { 
	
	jQuery('a[id = "maxVacay"]').click(function(){
		
		jQuery('#MV').show('slow');
		jQuery('#MS').hide('slow');
		jQuery('#AV').hide('slow');
	});
	
	jQuery('a[id = "maxSick"]').click(function(){
	
		jQuery('#MV').hide('slow');
		jQuery('#MS').show('slow');
		jQuery('#AV').hide('slow');

	});
	
	jQuery('a[id = "anniversary"]').click(function(){
	
		jQuery('#AV').show('slow');
		jQuery('#MV').hide('slow');
		jQuery('#MS').hide('slow');

	});
	
	jQuery('a[id = "VDT"]').click(function(){
	

		jQuery('#vacayLeft').show('slow');
		//jQuery('#MV').hide('slow');
		//jQuery('#MS').hide('slow');

	});
		
});
