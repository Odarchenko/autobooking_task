FactoryBot.define do
  factory :user do
    id {1}
    first_name { "John" }
    last_name  { "Doe" }
    phone_number {"12345678"}
    email {"mail@mail.com"}
  end
end
