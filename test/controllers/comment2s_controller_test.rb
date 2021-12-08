require 'test_helper'

class Comment2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment2 = comment2s(:one)
  end

  test "should get index" do
    get comment2s_url
    assert_response :success
  end

  test "should get new" do
    get new_comment2_url
    assert_response :success
  end

  test "should create comment2" do
    assert_difference('Comment2.count') do
      post comment2s_url, params: { comment2: { episode_id: @comment2.episode_id, user_id: @comment2.user_id, usercomment2: @comment2.usercomment2 } }
    end

    assert_redirected_to comment2_url(Comment2.last)
  end

  test "should show comment2" do
    get comment2_url(@comment2)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment2_url(@comment2)
    assert_response :success
  end

  test "should update comment2" do
    patch comment2_url(@comment2), params: { comment2: { episode_id: @comment2.episode_id, user_id: @comment2.user_id, usercomment2: @comment2.usercomment2 } }
    assert_redirected_to comment2_url(@comment2)
  end

  test "should destroy comment2" do
    assert_difference('Comment2.count', -1) do
      delete comment2_url(@comment2)
    end

    assert_redirected_to comment2s_url
  end
end
