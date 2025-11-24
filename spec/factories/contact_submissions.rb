FactoryBot.define do
  factory :contact_submission do
    name { "MyString" }
    email { Faker::Internet.email }
    message { "MyText" }
    site_owner_email { Faker::Internet.email }
    site_url { Faker::Internet.url }
  end
end
