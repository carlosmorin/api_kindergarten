FactoryBot.define do
  factory :user do
    name { "MyString" }
    email { "admin@gmail.com" }
    password_digest { "MyString" }
  end
end
