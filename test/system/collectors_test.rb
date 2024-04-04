require "application_system_test_case"

class CollectorsTest < ApplicationSystemTestCase
  setup do
    @collector = collectors(:one)
  end

  test "visiting the index" do
    visit collectors_url
    assert_selector "h1", text: "Collectors"
  end

  test "should create collector" do
    visit collectors_url
    click_on "New collector"

    fill_in "Name", with: @collector.name
    click_on "Create Collector"

    assert_text "Collector was successfully created"
    click_on "Back"
  end

  test "should update Collector" do
    visit collector_url(@collector)
    click_on "Edit this collector", match: :first

    fill_in "Name", with: @collector.name
    click_on "Update Collector"

    assert_text "Collector was successfully updated"
    click_on "Back"
  end

  test "should destroy Collector" do
    visit collector_url(@collector)
    click_on "Destroy this collector", match: :first

    assert_text "Collector was successfully destroyed"
  end
end
