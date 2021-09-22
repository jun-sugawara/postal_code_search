require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get seardh" do
    get search_seardh_url
    assert_response :success
  end

end
