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

  test "update" do
    capital = Capital.first
    patch "/capitals/#{capital.id}.json", params: { city: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["city"]
  end

  test "destroy" do
    assert_difference "Capital.count", -1 do
      delete "/capitals/#{Capital.first.id}.json"
      assert_response 200
    end
  end
end
