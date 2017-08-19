require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:full_name) }
  it { should validate_length_of(:full_name).is_at_most(70)}
end
