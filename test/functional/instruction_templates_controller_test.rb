require 'test_helper'

class InstructionTemplatesControllerTest < ActionController::TestCase
  setup do
    @instruction_template = instruction_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instruction_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instruction_template" do
    assert_difference('InstructionTemplate.count') do
      post :create, instruction_template: { name: @instruction_template.name }
    end

    assert_redirected_to instruction_template_path(assigns(:instruction_template))
  end

  test "should show instruction_template" do
    get :show, id: @instruction_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instruction_template
    assert_response :success
  end

  test "should update instruction_template" do
    put :update, id: @instruction_template, instruction_template: { name: @instruction_template.name }
    assert_redirected_to instruction_template_path(assigns(:instruction_template))
  end

  test "should destroy instruction_template" do
    assert_difference('InstructionTemplate.count', -1) do
      delete :destroy, id: @instruction_template
    end

    assert_redirected_to instruction_templates_path
  end
end
