json.extract! uploaded_report, :id, :file, :created_at, :updated_at
json.url uploaded_report_url(uploaded_report, format: :json)
json.file url_for(uploaded_report.file)
