class ReportMailer < ApplicationMailer
  def files_report
    @upload_actions = UploadAction.recent
    
    @now = DateTime.now.strftime("%d/%m/%Y %H:00")
    @from = (DateTime.now - 8.hours).strftime("%d/%m/%Y %H:00")

    mail(to: ENV['outgoing_mail'], subject: "Report for files added from #{@from} to #{@now}")
  end
end
