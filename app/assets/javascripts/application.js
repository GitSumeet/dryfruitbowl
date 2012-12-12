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
$(document).ready(function() {
	$('#simple').on('click', function() { new Messi('This is a message with Messi.'); });
	$('#title').on('click', function() { new Messi('This is a message with Messi.', {title: 'About TheDryFuitBowl Project'}); });
	$('#load').on('click', function() { Messi.load('about'); });
	$('#modal').on('click', function() { 
		new Messi('<h3>The DryFruit Bowl Project</h3>The project idea came about five months ago when I started having bowl-full of \
		 dry fruits every morning. Then after a few weeks I met Ruby and fell in love with it. Since then, \
		 I have been working on this project sporadically and here is the first version.</div>\
		 <br/><br/>\
		 The project uses the following components and technologies:<br/><br/>\
		 <ul><li><a href="http://rubyonrails.org/" target="_blank">Rails 3.2.7</a></li><li><a href="http://jquery.com/" target="_blank">JQuery 1.8.3</a></li><li><a href="http://metroui.org.ua/" target="_blank">Metro UI CSS</a></li><li><a href="http://marcosesperon.es/apps/messi/" target="_blank">Messi Message Plugin</a></li></ul>\
		 <br/>\
		 The project was developed for learning Ruby on Rails. All images used in the project were downloaded from\
		 the internet and are copyright of their respective owners. I do not own any of the images.\
		 <br/><br/>Developer: Abhimanyu Sirohi (abhimanyusirohi@gmail.com)<br/><br/>', 
		{title: 'About', modal: true}); 
	});	
})
