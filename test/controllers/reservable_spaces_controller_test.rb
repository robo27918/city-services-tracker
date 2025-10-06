require "test_helper"

class ReservableSpacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reservable_spaces_index_url
    assert_response :success
  end

  test "should get show" do
    get reservable_spaces_show_url
    assert_response :success
  end

  test "should get new" do
    get reservable_spaces_new_url
    assert_response :success
  end

  test "should get edit" do
    get reservable_spaces_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get reservable_spaces_destroy_url
    assert_response :success
  end
end
