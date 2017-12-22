$(document).on('turbolinks:load', function(){

	// $('.quiz_form').on('submit', function(e){
	// 	let $field_array = $('.form-control');
	// 	$field_array.each(function(){
	// 		if($(this).val('')){
	// 			alert('Please fill out all fields');
	// 			e.preventDefault();
	// 			return false
	// 		} 
	// 	})
	// });
	//adds a question field
	$(document).on('click', '.add_question_field', function(){
		let $btn = $(this);
		let $quiz = $btn.parent()
		let question_section = $quiz.find('.question_section');
		let last_question = question_section.find('.question_field').last();
		let last_question_name = last_question.attr('name');
		let last_question_id = getId(last_question_name, 2);
		question_section.append(questionHtmlGen(last_question_id));
	})
	//adds an anwswer field
	$(document).on('click', '.add_answer_field', function(){
		let $btn = $(this);
		let $question = $btn.closest('.question');
		let question_name = $question.find('.question_field').attr('name'); //element with name
		let question_id = getId(question_name, 2);

		let $last_answer = $question.find('.answer_section').find('.answer_field').last();
		let last_answer_name = $last_answer.attr('name'); //element with name
		let last_answer_id = getId(last_answer_name, 4);

		$question.find('.answer_section').append(answerHtmlGen(question_id, last_answer_id));
	})

	$(document).on('click', '.remove_answer_field', function(){
		$(this).parent().remove();
	})

	$(document).on('click', '.remove_question_field', function(){
		$(this).closest('.question').remove();
	})
	
	function getId(name, index){
										// returns ["quiz", "[question_attributes]","[0] ...]   |-|returns [0]
		return parseInt(name.split(/(\[\w+\])/).filter(val => val !== "")[index][1]);
	}
	//generates answer field
	function answerHtmlGen(question_id, last_answer_id){
		last_answer_id++;
		return `<div class="form-row">
				    <div class="col">
				    	<label class="label oswald" for="quiz_questions_attributes_${question_id}_answers_attributes_${last_answer_id}_content">Answer</label>
				      <input placeholder="Answer here..." class="form-control answer_field" type="text" name="quiz[questions_attributes][${question_id}][answers_attributes][${last_answer_id}][content]" id="quiz_questions_attributes_0_answers_attributes_${last_answer_id}_content">
				      <button type="button" class="btn remove_answer_field oswald">- Remove Answer Field</button>
				    </div>
				 	</div>`
	}
	//generates question field
	function questionHtmlGen(last_question_id){
		last_question_id++;
		return `<div class="question">
     	 <div class="form-row">
	       <div class="col">
	         <label class="label oswald" for="quiz_questions_attributes_${last_question_id}_content">Question ${last_question_id + 1}</label>
	         <input placeholder="Type your question here..." class="form-control question_field" type="text" name="quiz[questions_attributes][${last_question_id}][content]" id="quiz_questions_attributes_0_content">
	       </div> <!-- end .col -->
       </div>
       <div class="answer_section">
         <div class="form-row">
           <div class="col">
             <label class="label oswald" for="quiz_questions_attributes_${last_question_id}_answers_attributes_0_content">Answer</label>
             <input placeholder="Answer here..." class="form-control answer_field" type="text" name="quiz[questions_attributes][${last_question_id}][answers_attributes][0][content]" id="quiz_questions_attributes_${last_question_id}_answers_attributes_0_content">
           </div> <!-- end .col -->
         </div> <!-- end .col -->
       </div> <!-- end .col -->
       <button type="button" class="btn add_answer_field oswald">+ Add Answer Field</button>
       <button type="button" class="btn remove_question_field oswald">- Remove Question Field</button>
     </div>`
	}
});