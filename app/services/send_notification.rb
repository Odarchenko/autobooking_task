# frozen_string_literal: true

class SendNotification
  ARRAY_OF_SHORT_CODES = %w[first_name last_name].freeze
  attr_reader :user, :notification

  def initialize(id, type_of_notification)
    @user = User.find_by(id: id)
    @notification = Notification.find_by(type_of_notification: type_of_notification)

    validate!
  end

  def send_notification
    send_sms
    send_email
    notification_text
  end

  private

  def send_sms
    ::SendSms.process(user.phone_number, notification_text)
  end

  def send_email
    ::NotificationMailer.send_notification(user.email, notification_text).deliver_now
  end

  def notification_text
    return @body_text if @body_text

    ARRAY_OF_SHORT_CODES.each do |short_code|
      notification.body_text.gsub!("%#{short_code}%", user.send(short_code))
    end
    @body_text = notification.body_text
  end

  def validate!
    raise 'missing user' unless @user.present?
    raise 'missing notification' unless @notification.present?
  end
end
