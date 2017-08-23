FactoryGirl.define do
  factory :expense do
    title { FFaker::Product.product_name }
    description { FFaker::Lorem.sentence }
    amount { rand(5.00..45.00).round(2) }
  end
end