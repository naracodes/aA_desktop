FactoryBot.define do
  factory :user do
    username { Faker::Name.name }
    password { "raptor12" }
  end
end
