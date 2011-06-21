require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  setup do
    @category = categories(:one)
  end

  test "should show category" do
    get :show, id: @category.to_param
    assert_response :success
  end

end
