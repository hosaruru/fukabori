require "test_helper"

class CarryContentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get carry_contents_index_url
    assert_response :success
  end

  test "should get new" do
    get carry_contents_new_url
    assert_response :success
  end

  test "should get create" do
    get carry_contents_create_url
    assert_response :success
  end
end
