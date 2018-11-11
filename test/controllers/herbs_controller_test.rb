require 'test_helper'

class HerbsControllerTest < ActionDispatch::IntegrationTest
  test "should get graph_one" do
    get herbs_graph_one_url
    assert_response :success
  end

  test "should get graph_two" do
    get herbs_graph_two_url
    assert_response :success
  end

end
