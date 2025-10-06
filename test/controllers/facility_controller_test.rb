require "test_helper"

class FacilityControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get facility_index_url
    assert_response :success
  end

  test "should get show" do
    get facility_show_url
    assert_response :success
  end

  test "should get new" do
    get facility_new_url
    assert_response :success
  end

  test "should get edit" do
    get facility_edit_url
    assert_response :success
  end
end
