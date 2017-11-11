require 'test_helper'

class OpCodeLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @op_code_link = op_code_links(:one)
  end

  test "should get index" do
    get op_code_links_url
    assert_response :success
  end

  test "should get new" do
    get new_op_code_link_url
    assert_response :success
  end

  test "should create op_code_link" do
    assert_difference('OpCodeLink.count') do
      post op_code_links_url, params: { op_code_link: { has_many: @op_code_link.has_many, order: @op_code_link.order } }
    end

    assert_redirected_to op_code_link_url(OpCodeLink.last)
  end

  test "should show op_code_link" do
    get op_code_link_url(@op_code_link)
    assert_response :success
  end

  test "should get edit" do
    get edit_op_code_link_url(@op_code_link)
    assert_response :success
  end

  test "should update op_code_link" do
    patch op_code_link_url(@op_code_link), params: { op_code_link: { has_many: @op_code_link.has_many, order: @op_code_link.order } }
    assert_redirected_to op_code_link_url(@op_code_link)
  end

  test "should destroy op_code_link" do
    assert_difference('OpCodeLink.count', -1) do
      delete op_code_link_url(@op_code_link)
    end

    assert_redirected_to op_code_links_url
  end
end
