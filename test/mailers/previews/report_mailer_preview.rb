# Preview all emails at http://localhost:3000/rails/mailers/report_mailer
class ReportMailerPreview < ActionMailer::Preview
  def files_report_preview
    ReportMailer.files_report
  end
end
