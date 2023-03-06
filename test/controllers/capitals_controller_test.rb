require "test_helper"

class CapitalsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/capitals.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Capital.count, data.length
  end
end
