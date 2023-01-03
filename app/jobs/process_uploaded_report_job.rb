require 'roo'
requir
class ProcessUploadedReportJob < ApplicationJob
  queue_as :default

  def perform(uploaded_report)
    uploaded_report.file.open do |file|
      xlsx = Roo::Spreadsheet.open(file)
      binding.pry
      puts xlsx.default_sheet.cell('A',1)

    end
  end
end
