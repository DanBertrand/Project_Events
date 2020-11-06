require 'test_helper'

class ParticipationsControllerTest < ActionDispatch::IntegrationTest
  test "should get crete" do
    get participations_crete_url
    assert_response :success
  end

  test "should get destroy" do
    get participations_destroy_url
    assert_response :success
  end

end
