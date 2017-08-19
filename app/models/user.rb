class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  validates :full_name, presence: true, length: { maximum: 70 }
end
