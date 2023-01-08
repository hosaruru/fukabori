require "test_helper"

class TextsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get texts_new_url
    assert_response :success
  end

  test "should get create" do
    get texts_create_url
    assert_response :success
  end

  test "should get show" do
    get texts_show_url
    assert_response :success
  end

  test "should get edit" do
    get texts_edit_url
    assert_response :success
  end

  test "should get update" do
    get texts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get texts_destroy_url
    assert_response :success
  end
end
