require "application_system_test_case"

class HostelsTest < ApplicationSystemTestCase
  setup do
    @hostel = hostels(:one)
  end

  test "visiting the index" do
    visit hostels_url
    assert_selector "h1", text: "Hostels"
  end

  test "creating a Hostel" do
    visit hostels_url
    click_on "New Hostel"

    fill_in "Hostel name", with: @hostel.hostel_name
    fill_in "Location", with: @hostel.location
    fill_in "Price", with: @hostel.price
    click_on "Create Hostel"

    assert_text "Hostel was successfully created"
    click_on "Back"
  end

  test "updating a Hostel" do
    visit hostels_url
    click_on "Edit", match: :first

    fill_in "Hostel name", with: @hostel.hostel_name
    fill_in "Location", with: @hostel.location
    fill_in "Price", with: @hostel.price
    click_on "Update Hostel"

    assert_text "Hostel was successfully updated"
    click_on "Back"
  end

  test "destroying a Hostel" do
    visit hostels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hostel was successfully destroyed"
  end
end
