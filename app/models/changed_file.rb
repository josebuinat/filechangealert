class ChangedFile < ApplicationRecord
  enum status: [
    :added, # file is added to the directory
    :removed, # file is removed to the directory
    :modified, # file is modified to the directory
  ]

  scope :recent, -> { where(:created_at => 24.hours.ago..Time.now) }

  def self.regist(files, file_status)
    files.each do |f|
      file = ChangedFile.new
      file.file_name = File.basename(f)
      file.file_path = f
      file.status = file_status
      file.save
    end
  end
end
