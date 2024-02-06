require "application_system_test_case"

class OdersTest < ApplicationSystemTestCase
  setup do
    @oder = oders(:one)
  end

  test "visiting the index" do
    visit oders_url
    assert_selector "h1", text: "Oders"
  end

  test "creating a Oder" do
    visit oders_url
    click_on "New Oder"

    click_on "Create Oder"

    assert_text "Oder was successfully created"
    click_on "Back"
  end

  test "updating a Oder" do
    visit oders_url
    click_on "Edit", match: :first

    click_on "Update Oder"

    assert_text "Oder was successfully updated"
    click_on "Back"
  end

  test "destroying a Oder" do
    visit oders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oder was successfully destroyed"
  end
end
