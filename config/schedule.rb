set :environment, 'production'

every 1.day, at: ['12:00 am'] do
  rake 'report_file_changes'
end
