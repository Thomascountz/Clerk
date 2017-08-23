require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:expenses).with_foreign_key('creator_id').dependent(:destroy) }
end
