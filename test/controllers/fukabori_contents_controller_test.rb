require "test_helper"

class FukaboriContentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fukabori_contents_index_url
    assert_response :success
  end

  test "should get new" do
    get fukabori_contents_new_url
    assert_response :success
  end

  test "should get create" do
    get fukabori_contents_create_url
    assert_response :success
  end

  test "should get show" do
    get fukabori_contents_show_url
    assert_response :success
  end

  test "should get edit" do
    get fukabori_contents_edit_url
    assert_response :success
  end

  test "should get update" do
    get fukabori_contents_update_url
    assert_response :success
  end

  test "should get destroy" do
    get fukabori_contents_destroy_url
    assert_response :success
  end
end
