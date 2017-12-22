require 'test_helper'

class TakenQuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get taken_questions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get taken_questions_destroy_url
    assert_response :success
  end

end
