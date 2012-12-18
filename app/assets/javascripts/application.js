// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require_tree ../../../vendor
//= require wcolorpicker
$(document).ready(function() {
	$('#simple').on('click', function() { new Messi('This is a message with Messi.'); });
	$('#title').on('click', function() { new Messi('This is a message with Messi.', {title: 'About TheDryFuitBowl Project'}); });
	$('#load').on('click', function() { Messi.load('about'); });
	$('#modal').on('click', function() { 
		new Messi('<h3>The DryFruit Bowl Project</h3><p class="tertiary-secondary-text">The project idea came about five months ago when I started having bowl-full of \
		 dry fruits every morning. Then after a few weeks I met Ruby and fell in love with it. Since then, \
		 I have been working on this project sporadically and here is the first version.\
		 <br/>\
		 The project uses the following components and technologies:<br/><br/>\
		 Ruby 1.8.7<br/>Rails 3.2.7<br/>JQuery 1.8.3<br/>Metro UI CSS<br/>Messi Message Plugin<br/>Aptana Studio 3 IDE<br/>Ubuntu 12.04 LTS Platform<br/>\
		 <br/>\
		 DryFruitBowl is hosted on free version of <a href="http://www.heroku.com/" target="_blank">Heroku</a> Cedar stack using just 1 web Dyno. \
		 It uses the inbuilt PostgreSQL database addon on Heroku. Project source code is publicly accessible through \
		 <a href="https://github.com/a9s6/dryfruitbowl" target="_blank">GitHub repository.</a> \
		 <br/><br/>\
		 The project was developed for learning Ruby on Rails. All images used in the project were downloaded from\
		 the internet and are copyright of their respective owners. I do not own any of the images.</p>\
		 Feedback and Suggesstions: Abhimanyu Sirohi (abhimanyu@netjoos.com)<br/></div>', 
		{title: 'About', modal: true, width: 620}); 
	});	
})
