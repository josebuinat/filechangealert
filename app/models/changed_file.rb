class ChangedFile < ApplicationRecord
  enum status: [
    :added, # file is added to the directory
    :deleted, # file is deleted to the directory
    :modified, # file is modified to the directory
  ]

  scope :recent, -> { where(:created_at => 24.hours.ago..Time.now) }

  def self.regist(files)
  end
end
