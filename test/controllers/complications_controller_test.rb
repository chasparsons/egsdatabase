require 'test_helper'

class ComplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @complication = complications(:one)
  end

  test "should get index" do
    get complications_url
    assert_response :success
  end

  test "should get new" do
    get new_complication_url
    assert_response :success
  end

  test "should create complication" do
    assert_difference('Complication.count') do
      post complications_url, params: { complication: { area: @complication.area, comment: @complication.comment, operation_id: @complication.operation_id, severity: @complication.severity, title: @complication.title } }
    end

    assert_redirected_to complication_url(Complication.last)
  end

  test "should show complication" do
    get complication_url(@complication)
    assert_response :success
  end

  test "should get edit" do
    get edit_complication_url(@complication)
    assert_response :success
  end

  test "should update complication" do
    patch complication_url(@complication), params: { complication: { area: @complication.area, comment: @complication.comment, operation_id: @complication.operation_id, severity: @complication.severity, title: @complication.title } }
    assert_redirected_to complication_url(@complication)
  end

  test "should destroy complication" do
    assert_difference('Complication.count', -1) do
      delete complication_url(@complication)
    end

    assert_redirected_to complications_url
  end
end
