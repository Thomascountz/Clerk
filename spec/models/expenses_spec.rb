require 'rails_helper'

RSpec.describe Expense, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:amount) }
  it { should validate_numericality_of(:amount).
  		is_greater_than(0) }
end
