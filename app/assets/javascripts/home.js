$(document).on('turbolinks:load', function(){
	$('.quiz_form_submit_button').on('click', function(){
		let div = $('.quiz_form_wrap')
		div.animate({right: '150%'}, "slow");
	})
});