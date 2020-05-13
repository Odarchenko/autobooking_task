require 'rails_helper'

RSpec.describe Notification, type: :model do
  it { is_expected.to validate_presence_of(:body_text) }
  it { is_expected.to validate_presence_of(:type_of_notification) }
end
