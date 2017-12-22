$(document).on('turbolinks:load', function(){

	$(document).on('click', function(){
		console.log($(this).parent());
	})
});