FactoryBot.define do
  factory :goal do
    user_id { User.all.sample.id }
    name { "MyString" }
    description { "MyText" }
    status { false }
  end
end
