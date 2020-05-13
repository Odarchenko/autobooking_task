class Notification < ApplicationRecord
  validates :type_of_notification, uniqueness: true, presence: true
  validates :body_text, presence: true
end
