$(document).on('turbolinks:load', function(){
	// $('.quiz_form_submit_button').on('click', function(){
	// 	let div = $('.quiz_form_wrap')
	// 	div.animate({right: '150%'}, "slow");
	// })
	
	$('.add_question_field').on('click', function(){
		let t = 1;
		let new_question_field = `<div class="question_section">
			  <div class="form-row">
			    <div class="col">
			    	<label class="label oswald" for="quiz_questions_attributes_0_content">Question</label>
			      <input placeholder="Type your question here..." class="form-control" type="text" name="quiz[questions_attributes][0][content]" id="quiz_questions_attributes_0_content">
			    </div>
			  </div>
				<div class="answer_section">
				  <div class="form-row">
				    <div class="col">
				    	<label class="label oswald" for="quiz_questions_attributes_0_answers_attributes_0_content">Answer</label>
				      <input placeholder="Answer here..." class="form-control" type="text" name="quiz[questions_attributes][0][answers_attributes][0][content]" id="quiz_questions_attributes_0_answers_attributes_0_content">
				    </div>
				 	</div>
			 	</div>
			 	<div class="btn add_answer_field oswald">+ Add Answer Field</div>
		 	</div>`
		$('.question_section').append(new_question_field);
		t + 1;
	})
	$('.add_answer_field').on('click', function(){
		let ts = new Date()
		let new_answer_field = `<div class="form-row">
			    <div class="col">
			    	<label class="label oswald" for="quiz_questions_attributes_0_answers_attributes_${ts}_content">Answer</label>
			      <input placeholder="Answer here..." class="form-control" type="text" name="quiz[questions_attributes][0][answers_attributes][${ts}][content]" id="quiz_questions_attributes_0_answers_attributes_${ts}_content">
			    </div>
			 	</div>`
		$('.answer_section').append(new_answer_field)
	})
});