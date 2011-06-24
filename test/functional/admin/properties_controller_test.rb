require 'test_helper'

class Admin::PropertiesControllerTest < ActionController::TestCase
  setup do
    @admin_property = admin_properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_property" do
    assert_difference('Admin::Property.count') do
      post :create, admin_property: @admin_property.attributes
    end

    assert_redirected_to admin_property_path(assigns(:admin_property))
  end

  test "should show admin_property" do
    get :show, id: @admin_property.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_property.to_param
    assert_response :success
  end

  test "should update admin_property" do
    put :update, id: @admin_property.to_param, admin_property: @admin_property.attributes
    assert_redirected_to admin_property_path(assigns(:admin_property))
  end

  test "should destroy admin_property" do
    assert_difference('Admin::Property.count', -1) do
      delete :destroy, id: @admin_property.to_param
    end

    assert_redirected_to admin_properties_path
  end
end
