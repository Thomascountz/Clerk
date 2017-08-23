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

require 'rails_helper'

RSpec.describe Expense, type: :model do
	it { should belong_to(:creator).class_name('User').with_foreign_key('creator_id') }
  it { should validate_presence_of(:creator_id) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:amount) }
  it { should validate_numericality_of(:amount).
  		is_greater_than(0) }
end
