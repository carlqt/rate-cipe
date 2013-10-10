// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require tinymce-jquery
//= require_tree .

$(window).load(function(){
	$(document).ready(function () {
		var addDiv = $('#inputIngredients');
		var i = $('#addinput p').size() + 1;

		$('#addNew').live('click', function() {
		$('<p><input type="text" id="recipe_ingredients_' + i +'" name="recipe[ingredients]" value=""/><a href="#" id="remNew">Remove</a> </p>').appendTo(addDiv);
		i++;

		return false;
		});

		$('#remNew').live('click', function() {
			if( i > 2 ) {
				$(this).parent('p').remove();
				i--;
			}
		return false;
		});
	});
});