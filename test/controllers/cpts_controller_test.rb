require 'test_helper'

class CptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cpt = cpts(:one)
  end

  test "should get index" do
    get cpts_url
    assert_response :success
  end

  test "should get new" do
    get new_cpt_url
    assert_response :success
  end

  test "should create cpt" do
    assert_difference('Cpt.count') do
      post cpts_url, params: { cpt: { category: @cpt.category, code: @cpt.code, description: @cpt.description } }
    end

    assert_redirected_to cpt_url(Cpt.last)
  end

  test "should show cpt" do
    get cpt_url(@cpt)
    assert_response :success
  end

  test "should get edit" do
    get edit_cpt_url(@cpt)
    assert_response :success
  end

  test "should update cpt" do
    patch cpt_url(@cpt), params: { cpt: { category: @cpt.category, code: @cpt.code, description: @cpt.description } }
    assert_redirected_to cpt_url(@cpt)
  end

  test "should destroy cpt" do
    assert_difference('Cpt.count', -1) do
      delete cpt_url(@cpt)
    end

    assert_redirected_to cpts_url
  end
end
