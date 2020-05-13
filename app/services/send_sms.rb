# frozen_string_literal: true

class SendSms
  class << self
    def process(reciver_phone, message)
      client = Twilio::REST::Client.new
      client.messages.create({
         from: Rails.application.secrets.twilio_phone_number,
         to: reciver_phone,
         body: message
       })
    end
  end
end
