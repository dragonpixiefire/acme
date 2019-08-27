FactoryBot.define do
  factory :product do
    name { "MyString" }
    description { "MyText" }
    published { false }
    category { "otc" }
  end
end
