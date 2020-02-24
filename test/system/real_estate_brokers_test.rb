require "application_system_test_case"

class RealEstateBrokersTest < ApplicationSystemTestCase
  setup do
    @real_estate_broker = real_estate_brokers(:one)
  end

  test "visiting the index" do
    visit real_estate_brokers_url
    assert_selector "h1", text: "Real Estate Brokers"
  end

  test "creating a Real estate broker" do
    visit real_estate_brokers_url
    click_on "New Real Estate Broker"

    fill_in "Agent", with: @real_estate_broker.agent
    fill_in "Mail", with: @real_estate_broker.mail
    fill_in "Name", with: @real_estate_broker.name
    fill_in "Phone", with: @real_estate_broker.phone
    fill_in "Rut", with: @real_estate_broker.rut
    click_on "Create Real estate broker"

    assert_text "Real estate broker was successfully created"
    click_on "Back"
  end

  test "updating a Real estate broker" do
    visit real_estate_brokers_url
    click_on "Edit", match: :first

    fill_in "Agent", with: @real_estate_broker.agent
    fill_in "Mail", with: @real_estate_broker.mail
    fill_in "Name", with: @real_estate_broker.name
    fill_in "Phone", with: @real_estate_broker.phone
    fill_in "Rut", with: @real_estate_broker.rut
    click_on "Update Real estate broker"

    assert_text "Real estate broker was successfully updated"
    click_on "Back"
  end

  test "destroying a Real estate broker" do
    visit real_estate_brokers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Real estate broker was successfully destroyed"
  end
end
