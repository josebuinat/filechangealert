class RunListener
  def initialize
  end

  def self.start
    listener = Listen.to(ENV["directory_path"]) do |modified, added, removed|
      if added.count > 0 ChangedFile.regist(added, :added)
      if added.count > 0 ChangedFile.regist(modified, :modified)
      if added.count > 0 ChangedFile.regist(removed, :removed)
    end
    listener.start
    listener.only /\.mov/
    sleep
  end

end
