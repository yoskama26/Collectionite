require "test_helper"

class CollectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collector = collectors(:one)
  end

  test "should get index" do
    get collectors_url
    assert_response :success
  end

  test "should get new" do
    get new_collector_url
    assert_response :success
  end

  test "should create collector" do
    assert_difference("Collector.count") do
      post collectors_url, params: { collector: { name: @collector.name } }
    end

    assert_redirected_to collector_url(Collector.last)
  end

  test "should show collector" do
    get collector_url(@collector)
    assert_response :success
  end

  test "should get edit" do
    get edit_collector_url(@collector)
    assert_response :success
  end

  test "should update collector" do
    patch collector_url(@collector), params: { collector: { name: @collector.name } }
    assert_redirected_to collector_url(@collector)
  end

  test "should destroy collector" do
    assert_difference("Collector.count", -1) do
      delete collector_url(@collector)
    end

    assert_redirected_to collectors_url
  end
end
