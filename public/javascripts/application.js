// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


jQuery(document).ready(function() { 


	jQuery( '#employee_dob' ).datepicker();
	//jQuery( '#vacay_dateFrom' ).datepicker();
	//jQuery( '#vacay_dateUntil' ).datepicker();

	

	jQuery( '#vacay_dateFrom' ).datepicker({ dateFormat: 'yy/mm/dd' });
	jQuery( '#vacay_dateUntil' ).datepicker({ dateFormat: 'yy/mm/dd' });
	console.log('hello there');

	//var oneDay = 24*60*60*1000; // hours*minutes*seconds*milliseconds
	//var firstDate = new Date(2008,01,12);
	//var secondDate = new Date(2008,01,22);

	//var diffDays = Math.abs((firstDate.getTime() - secondDate.getTime())/(oneDay));

	jQuery('[id = "vacay_submit"]').click(function(){
		console.log('collect var');
		var df = jQuery('#vacay_dateFrom').val();
     	var du = jQuery("#vacay_dateUntil").val();

     	var oneDay = 24*60*60*1000;
     	var firstDate = new Date(df);
     	var secondDate = new Date(du);

     	var diffDays = Math.abs((firstDate.getTime() - secondDate.getTime())/(oneDay));
		alert('Max Sum '+ diffDays );
		//jQuery.post(diffDays);

  		//jQuery.('name=vacay_sumVacay').val(diffDays);
  		jQuery("[id='vacay_sumVacay']").val(diffDays);


	});

	


	
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
