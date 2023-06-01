# This will guess the User class
FactoryBot.define do
  factory :user do
    first_name { "John" }
    last_name  { "Doe" }
    email { "john@doe.com" }
    password { "1234john" }
    doctor { true }
  end
end
