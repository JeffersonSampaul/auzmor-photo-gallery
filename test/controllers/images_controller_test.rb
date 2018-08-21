require 'test_helper'

class ImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get display" do
    get images_display_url
    assert_response :success
  end

end
