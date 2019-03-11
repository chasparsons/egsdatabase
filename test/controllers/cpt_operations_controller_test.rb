require 'test_helper'

class CptOperationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cpt_operation = cpt_operations(:one)
  end

  test "should get index" do
    get cpt_operations_url
    assert_response :success
  end

  test "should get new" do
    get new_cpt_operation_url
    assert_response :success
  end

  test "should create cpt_operation" do
    assert_difference('CptOperation.count') do
      post cpt_operations_url, params: { cpt_operation: { cpt_id: @cpt_operation.cpt_id, operation_id: @cpt_operation.operation_id, order: @cpt_operation.order } }
    end

    assert_redirected_to cpt_operation_url(CptOperation.last)
  end

  test "should show cpt_operation" do
    get cpt_operation_url(@cpt_operation)
    assert_response :success
  end

  test "should get edit" do
    get edit_cpt_operation_url(@cpt_operation)
    assert_response :success
  end

  test "should update cpt_operation" do
    patch cpt_operation_url(@cpt_operation), params: { cpt_operation: { cpt_id: @cpt_operation.cpt_id, operation_id: @cpt_operation.operation_id, order: @cpt_operation.order } }
    assert_redirected_to cpt_operation_url(@cpt_operation)
  end

  test "should destroy cpt_operation" do
    assert_difference('CptOperation.count', -1) do
      delete cpt_operation_url(@cpt_operation)
    end

    assert_redirected_to cpt_operations_url
  end
end
