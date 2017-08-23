# == Schema Information
#
# Table name: expenses
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :text
#  amount      :decimal(, )      not null
#  creator_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :expense do
    title { FFaker::Product.product_name }
    description { FFaker::Lorem.sentence }
    amount { rand(5.00..45.00).round(2) }
    association :creator, factory: :user
  end
end
