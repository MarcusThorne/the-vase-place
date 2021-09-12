require "test_helper"

class WishlistsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get wishlists_update_url
    assert_response :success
  end
end
