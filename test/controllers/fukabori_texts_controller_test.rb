require "test_helper"

class FukaboriTextsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get fukabori_texts_new_url
    assert_response :success
  end

  test "should get create" do
    get fukabori_texts_create_url
    assert_response :success
  end

  test "should get show" do
    get fukabori_texts_show_url
    assert_response :success
  end

  test "should get edit" do
    get fukabori_texts_edit_url
    assert_response :success
  end

  test "should get update" do
    get fukabori_texts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get fukabori_texts_destroy_url
    assert_response :success
  end
end
