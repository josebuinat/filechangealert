class ChangedFile < ApplicationRecord
  enum status: [
    :added, # file is added to the directory
    :removed, # file is removed to the directory
    :modified, # file is modified to the directory
  ]

  scope :recent, -> { where(:created_at => 24.hours.ago..Time.now) }

  def self.regist(files, file_status)
  end
end
