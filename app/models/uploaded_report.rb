class UploadedReport < ApplicationRecord
  enum kind: {daily: 'daily', custom: 'custom'}
  has_one_attached :file

  after_create_commit :process_file

  def process_file
    ProcessUploadedReportJob.perform_later(self)
  end
end
