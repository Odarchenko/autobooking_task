class NotificationMailer < ApplicationMailer
  default from: Rails.application.secrets.smtp_send_from

  def send_notification(reciver, body_text)
    @body_text = body_text
    mail(to: reciver, subject: 'Notification')
  end
end
