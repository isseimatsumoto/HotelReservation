require "test_helper"

class ReservationControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get reservation_top_url
    assert_response :success
  end
end
