require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Destination", with: @order.destination
    fill_in "Insurance", with: @order.insurance
    fill_in "Origin", with: @order.origin
    fill_in "Plan", with: @order.plan
    fill_in "Status", with: @order.status
    fill_in "Vendor", with: @order.vendor_id
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Destination", with: @order.destination
    fill_in "Insurance", with: @order.insurance
    fill_in "Origin", with: @order.origin
    fill_in "Plan", with: @order.plan
    fill_in "Status", with: @order.status
    fill_in "Vendor", with: @order.vendor_id
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
