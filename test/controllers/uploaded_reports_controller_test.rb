require "test_helper"

class UploadedReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uploaded_report = uploaded_reports(:one)
  end

  test "should get index" do
    get uploaded_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_uploaded_report_url
    assert_response :success
  end

  test "should create uploaded_report" do
    assert_difference('UploadedReport.count') do
      post uploaded_reports_url, params: { uploaded_report: {  } }
    end

    assert_redirected_to uploaded_report_url(UploadedReport.last)
  end

  test "should show uploaded_report" do
    get uploaded_report_url(@uploaded_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_uploaded_report_url(@uploaded_report)
    assert_response :success
  end

  test "should update uploaded_report" do
    patch uploaded_report_url(@uploaded_report), params: { uploaded_report: {  } }
    assert_redirected_to uploaded_report_url(@uploaded_report)
  end

  test "should destroy uploaded_report" do
    assert_difference('UploadedReport.count', -1) do
      delete uploaded_report_url(@uploaded_report)
    end

    assert_redirected_to uploaded_reports_url
  end
end
