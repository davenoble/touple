// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

function getColor( colorVal ) {
	  colorAbs = Math.abs(colorVal);	 
	  
	  if (colorAbs <= 25) {
	  	myGreen = 255;
	  	myRed = Math.ceil(255*(colorAbs/25));
	  	myBlue = 0;
	  } else {
	  	myGreen = Math.ceil(255*(1-(colorAbs-25)/25));
	  	myRed = 255;
	  	myBlue = 0;
	  }
	  	  
	  theColor = "rgb(" + myRed + "," + myGreen + ","+ myBlue +")"; 
  	  return( theColor ); 
}

function refreshSwatch() {
	
	sliderId = $(this).attr("id");
	sliderPosition = $(this).slider( "value" ),
	newColor = getColor( sliderPosition );
	
	//Select proper input tag for update
	switch (sliderId) {
		case "happy":
			$("#survey_happy_sad").val(sliderPosition);
			break;
		case "lonely":
			$("#survey_lonely_crowded").val(sliderPosition);
			break;
		case "horny":
			$("#survey_horny_pressured").val(sliderPosition);
			break;
		case "janitor":
			$("#survey_janitor_nagged").val(sliderPosition);
			break;
		default:
	}
	
	//Set CSS background colors for 3 slider compoents
	$(this).find( ".ui-slider-range" ).css( "background-color", newColor ); //Slider progress
	$(this).find(".ui-state-default, .ui-widget-content .ui-state-default" ).css( "background", newColor ); //Slider knob
	$(this).css( "background", newColor ); //Slider Background
	
}

$(document).ready(function() {
	  $( ".coloredSlider" ).slider({
		    orientation: "horizontal",
		    range: "min",
		    min: -50,
		    max: 50,
		    value: 0,
		    slide: refreshSwatch,
		    change: refreshSwatch
	  });
	  
	  $slider = $(".coloredSlider");
	  $slider.slider('option', 'change').call($slider); // Color initialize HACK JQuery trigger() broken...
	  
});