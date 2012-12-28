require 'test_helper'

class InstructionSetsControllerTest < ActionController::TestCase
  setup do
    @instruction_set = instruction_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instruction_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instruction_set" do
    assert_difference('InstructionSet.count') do
      post :create, instruction_set: {  }
    end

    assert_redirected_to instruction_set_path(assigns(:instruction_set))
  end

  test "should show instruction_set" do
    get :show, id: @instruction_set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instruction_set
    assert_response :success
  end

  test "should update instruction_set" do
    put :update, id: @instruction_set, instruction_set: {  }
    assert_redirected_to instruction_set_path(assigns(:instruction_set))
  end

  test "should destroy instruction_set" do
    assert_difference('InstructionSet.count', -1) do
      delete :destroy, id: @instruction_set
    end

    assert_redirected_to instruction_sets_path
  end
end
