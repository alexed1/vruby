require 'test_helper'

class SchmattasControllerTest < ActionController::TestCase
  setup do
    @schmatta = schmattas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schmattas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create schmatta" do
    assert_difference('Schmatta.count') do
      post :create, schmatta: { name: @schmatta.name }
    end

    assert_redirected_to schmatta_path(assigns(:schmatta))
  end

  test "should show schmatta" do
    get :show, id: @schmatta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @schmatta
    assert_response :success
  end

  test "should update schmatta" do
    put :update, id: @schmatta, schmatta: { name: @schmatta.name }
    assert_redirected_to schmatta_path(assigns(:schmatta))
  end

  test "should destroy schmatta" do
    assert_difference('Schmatta.count', -1) do
      delete :destroy, id: @schmatta
    end

    assert_redirected_to schmattas_path
  end
end
