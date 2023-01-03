class CreateUploadedReports < ActiveRecord::Migration[6.1]
  def change
    create_table :uploaded_reports do |t|
      t.string :kind

      t.timestamps
    end
  end
end
