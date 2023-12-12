require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase
  setup do
    @page = pages(:one)
  end

  test "visiting the index" do
    visit pages_url
    assert_selector "h1", text: "Pages"
  end

  test "should create page" do
    visit pages_url
    click_on "New page"

    check "Indexed" if @page.indexed
    fill_in "Last scanned", with: @page.last_scanned
    fill_in "Site", with: @page.site_id
    fill_in "Url", with: @page.url
    click_on "Create Page"

    assert_text "Page was successfully created"
    click_on "Back"
  end

  test "should update Page" do
    visit page_url(@page)
    click_on "Edit this page", match: :first

    check "Indexed" if @page.indexed
    fill_in "Last scanned", with: @page.last_scanned
    fill_in "Site", with: @page.site_id
    fill_in "Url", with: @page.url
    click_on "Update Page"

    assert_text "Page was successfully updated"
    click_on "Back"
  end

  test "should destroy Page" do
    visit page_url(@page)
    click_on "Destroy this page", match: :first

    assert_text "Page was successfully destroyed"
  end
end
