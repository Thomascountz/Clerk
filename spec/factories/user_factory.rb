FactoryGirl.define do
  factory :user do
    full_name { FFaker::Name.name }
    email { FFaker::Internet.safe_email }
    password { FFaker::Internet.password }
    password_confirmation { password }
  end
end