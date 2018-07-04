require 'test_helper'

class UserdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userdate = userdates(:one)
  end

  test "should get index" do
    get userdates_url, as: :json
    assert_response :success
  end

  test "should create userdate" do
    assert_difference('Userdate.count') do
      post userdates_url, params: { userdate: { date: @userdate.date, user_id: @userdate.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show userdate" do
    get userdate_url(@userdate), as: :json
    assert_response :success
  end

  test "should update userdate" do
    patch userdate_url(@userdate), params: { userdate: { date: @userdate.date, user_id: @userdate.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy userdate" do
    assert_difference('Userdate.count', -1) do
      delete userdate_url(@userdate), as: :json
    end

    assert_response 204
  end
end
