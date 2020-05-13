FactoryBot.define do
  factory :notification do
    body_text { "Hello %first_name% %last_name% ,you have notificatio: " }
    type_of_notification  { "base_notification" }
  end
end
