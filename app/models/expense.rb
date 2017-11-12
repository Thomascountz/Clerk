# == Schema Information
#
# Table name: expenses
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :text
#  amount      :decimal(, )      not null
#  creator_id  :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Expense < ApplicationRecord
	validates :title, presence: true
	validates :amount, presence: true, numericality: { greater_than: 0 }
	validates :creator_id, presence: true
	belongs_to :creator, :foreign_key => :creator_id, :class_name => "User"

	def self.search(search)
		if search
			where('title ILIKE ? OR description ILIKE ?', "%#{search}%", "%#{search}%")
		else
			all
		end
	end
end
