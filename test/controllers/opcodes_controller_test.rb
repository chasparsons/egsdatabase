require 'test_helper'

class OpcodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opcode = opcodes(:one)
  end

  test "should get index" do
    get opcodes_url
    assert_response :success
  end

  test "should get new" do
    get new_opcode_url
    assert_response :success
  end

  test "should create opcode" do
    assert_difference('Opcode.count') do
      post opcodes_url, params: { opcode: { cpt_codes_id: @opcode.cpt_codes_id, operation_id: @opcode.operation_id, order: @opcode.order } }
    end

    assert_redirected_to opcode_url(Opcode.last)
  end

  test "should show opcode" do
    get opcode_url(@opcode)
    assert_response :success
  end

  test "should get edit" do
    get edit_opcode_url(@opcode)
    assert_response :success
  end

  test "should update opcode" do
    patch opcode_url(@opcode), params: { opcode: { cpt_codes_id: @opcode.cpt_codes_id, operation_id: @opcode.operation_id, order: @opcode.order } }
    assert_redirected_to opcode_url(@opcode)
  end

  test "should destroy opcode" do
    assert_difference('Opcode.count', -1) do
      delete opcode_url(@opcode)
    end

    assert_redirected_to opcodes_url
  end
end
