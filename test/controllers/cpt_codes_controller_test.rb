require 'test_helper'

class CptCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cpt_code = cpt_codes(:one)
  end

  test "should get index" do
    get cpt_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_cpt_code_url
    assert_response :success
  end

  test "should create cpt_code" do
    assert_difference('CptCode.count') do
      post cpt_codes_url, params: { cpt_code: { cats: @cpt_code.cats, description: @cpt_code.description, mouse: @cpt_code.mouse } }
    end

    assert_redirected_to cpt_code_url(CptCode.last)
  end

  test "should show cpt_code" do
    get cpt_code_url(@cpt_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_cpt_code_url(@cpt_code)
    assert_response :success
  end

  test "should update cpt_code" do
    patch cpt_code_url(@cpt_code), params: { cpt_code: { cats: @cpt_code.cats, description: @cpt_code.description, mouse: @cpt_code.mouse } }
    assert_redirected_to cpt_code_url(@cpt_code)
  end

  test "should destroy cpt_code" do
    assert_difference('CptCode.count', -1) do
      delete cpt_code_url(@cpt_code)
    end

    assert_redirected_to cpt_codes_url
  end
end
