require "test_helper"

class CapitalsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/capitals.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Capital.count, data.length
  end

  test "create" do
    assert_difference "Capital.count", 1 do
      post "/capitals.json", params: { name: "lake", width: 800, height: 600 }
      assert_response 200
    end
  end

  test "show" do
    get "/capitals/#{Capital.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "city", "state", "timezone", "created_at", "updated_at"], data.keys
  end
end
