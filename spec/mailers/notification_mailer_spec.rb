require "rails_helper"

RSpec.describe NotificationMailer, type: :mailer do
  describe "notify" do
    let(:mail) { NotificationMailer.send_notification('mail@mail.com', 'hi') }

    it "renders the headers" do
      expect(mail.subject).to eq("Notification")
      expect(mail.to).to eq(["mail@mail.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("hi")
    end
  end
end
