desc "Report file changes"
task report_file_changes: :environment do 
  ReportMailer.files_report.deliver
end