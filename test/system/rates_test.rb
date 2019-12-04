require "application_system_test_case"

class RatesTest < ApplicationSystemTestCase
  setup do
    @rate = rates(:one)
  end

  test "visiting the index" do
    visit rates_url
    assert_selector "h1", text: "Rates"
  end

  test "creating a Rate" do
    visit rates_url
    click_on "New Rate"

    fill_in "Advance", with: @rate.advance
    fill_in "Basic", with: @rate.basic
    fill_in "Destination", with: @rate.destination
    fill_in "Insurance", with: @rate.insurance
    fill_in "Origin", with: @rate.origin
    fill_in "Premium", with: @rate.premium
    fill_in "Vendor", with: @rate.vendor_id
    click_on "Create Rate"

    assert_text "Rate was successfully created"
    click_on "Back"
  end

  test "updating a Rate" do
    visit rates_url
    click_on "Edit", match: :first

    fill_in "Advance", with: @rate.advance
    fill_in "Basic", with: @rate.basic
    fill_in "Destination", with: @rate.destination
    fill_in "Insurance", with: @rate.insurance
    fill_in "Origin", with: @rate.origin
    fill_in "Premium", with: @rate.premium
    fill_in "Vendor", with: @rate.vendor_id
    click_on "Update Rate"

    assert_text "Rate was successfully updated"
    click_on "Back"
  end

  test "destroying a Rate" do
    visit rates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rate was successfully destroyed"
  end
end
