require "application_system_test_case"

class UploadedReportsTest < ApplicationSystemTestCase
  setup do
    @uploaded_report = uploaded_reports(:one)
  end

  test "visiting the index" do
    visit uploaded_reports_url
    assert_selector "h1", text: "Uploaded Reports"
  end

  test "creating a Uploaded report" do
    visit uploaded_reports_url
    click_on "New Uploaded Report"

    click_on "Create Uploaded report"

    assert_text "Uploaded report was successfully created"
    click_on "Back"
  end

  test "updating a Uploaded report" do
    visit uploaded_reports_url
    click_on "Edit", match: :first

    click_on "Update Uploaded report"

    assert_text "Uploaded report was successfully updated"
    click_on "Back"
  end

  test "destroying a Uploaded report" do
    visit uploaded_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Uploaded report was successfully destroyed"
  end
end
