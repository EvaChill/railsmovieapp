require "test_helper"

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get movies_path  # ✅ Updated from movies_index_url
    assert_response :success
  end

  test "should get show" do
    get movie_path(id: 1)  # ✅ Updated from movies_show_url
    assert_response :success
  end
end
