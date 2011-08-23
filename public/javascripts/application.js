// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

jQuery(document).ready(function() { 
	
	jQuery('a[id = "maxVacay"]').click(function(){
		
		jQuery('#MV').show('slow');
		jQuery('#MS').hide('slow');
		jQuery('#DE').hide('slow');
		jQuery('#created_at').hide('slow');
	});
	
	jQuery('a[id = "maxSick"]').click(function(){
	
		jQuery('#MV').hide('slow');
		jQuery('#MS').show('slow');
		jQuery('#DE').hide('slow');
		jQuery('#created_at').hide('slow');

	});
	
	jQuery('a[id = "doe"]').click(function(){
		
		jQuery('#MV').hide('slow');
		jQuery('#MS').hide('slow');
		jQuery('#DE').show('slow');
		jQuery('#created_at').hide('slow');

	});
	
	jQuery('a[id = "VDT"]').click(function(){
	
		jQuery('#normal').hide('slow');
		jQuery('#vacayTaken').show('slow');
		jQuery('#vacayLeft').hide('slow');


	});
	
	jQuery('a[id = "VDL"]').click(function(){
	
		jQuery('#normal').hide('slow');
		jQuery('#vacayTaken').hide('slow');
		jQuery('#vacayLeft').show('slow');


	});
	
	jQuery('a[id = "SDT"]').click(function(){
	
		jQuery('#normal').hide('slow');
		jQuery('#sickTaken').show('slow');
		jQuery('#sickLeft').hide('slow');
		

	});
	
	jQuery('a[id = "SDL"]').click(function(){
	
		jQuery('#normal').hide('slow');
		jQuery('#sickTaken').hide('slow');
		jQuery('#sickLeft').show('slow');

	});
	

		
});
