require 'test_helper'

class ResumesControllerTest < ActionController::TestCase
  setup do
    @resume = resumes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resumes)
  end
  test "should show resume" do
    get :show, id: @resume.to_param
    assert_response :success
  end

end
