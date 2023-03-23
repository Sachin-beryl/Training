require "test_helper"

class FormDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get form_details_index_url
    assert_response :success
  end
end
