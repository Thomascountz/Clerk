class Expense < ApplicationRecord
	validates :title, presence: true
	validates :amount, presence: true, numericality: { greater_than: 0 }
	validates :creator_id, presence: true
	belongs_to :creator, :foreign_key => :creator_id, :class_name => "User"
end
