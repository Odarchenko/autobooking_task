require 'rails_helper'

describe ::SendNotification do
  let(:user) { FactoryBot.build(:user)}
  let(:notification) { FactoryBot.build(:notification) }

  it "send notification correct" do
    user.save
    notification.save
    expect(described_class.new(user.id, notification.type_of_notification).send_notification).to be_string
  end

  it "send notification error" do
    lambda {described_class.new(nil, notification.type_of_notification).send_notification}.should raise_error(RuntimeError, "missing user")
  end

  it "send notification error" do
    lambda {described_class.new(user.id, nil).send_notification}.should raise_error(RuntimeError, "missing notification")
  end
end
