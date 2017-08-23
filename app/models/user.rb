class User < ApplicationRecord
  devise :database_authenticatable, :rememberable, :validatable,
  			 :registerable

  has_many :expenses, :foreign_key => "creator_id", dependent: :destroy
end
