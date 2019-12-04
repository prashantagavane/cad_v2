require "application_system_test_case"

class VendorsTest < ApplicationSystemTestCase
  setup do
    @vendor = vendors(:one)
  end

  test "visiting the index" do
    visit vendors_url
    assert_selector "h1", text: "Vendors"
  end

  test "creating a Vendor" do
    visit vendors_url
    click_on "New Vendor"

    fill_in "Actual payment", with: @vendor.actual_payment
    fill_in "Balance payment", with: @vendor.balance_payment
    fill_in "Deal", with: @vendor.deal
    fill_in "Delivered orders", with: @vendor.delivered_orders
    fill_in "Discount", with: @vendor.discount
    fill_in "Email", with: @vendor.email
    fill_in "Failed orders", with: @vendor.failed_orders
    fill_in "Name", with: @vendor.name
    fill_in "Penalty", with: @vendor.penalty
    fill_in "Release", with: @vendor.release
    fill_in "Sla", with: @vendor.sla
    click_on "Create Vendor"

    assert_text "Vendor was successfully created"
    click_on "Back"
  end

  test "updating a Vendor" do
    visit vendors_url
    click_on "Edit", match: :first

    fill_in "Actual payment", with: @vendor.actual_payment
    fill_in "Balance payment", with: @vendor.balance_payment
    fill_in "Deal", with: @vendor.deal
    fill_in "Delivered orders", with: @vendor.delivered_orders
    fill_in "Discount", with: @vendor.discount
    fill_in "Email", with: @vendor.email
    fill_in "Failed orders", with: @vendor.failed_orders
    fill_in "Name", with: @vendor.name
    fill_in "Penalty", with: @vendor.penalty
    fill_in "Release", with: @vendor.release
    fill_in "Sla", with: @vendor.sla
    click_on "Update Vendor"

    assert_text "Vendor was successfully updated"
    click_on "Back"
  end

  test "destroying a Vendor" do
    visit vendors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vendor was successfully destroyed"
  end
end
