require 'rails_helper'

RSpec.feature 'user deleting an expense', type: :feature do
	describe 'when they click the delete button' do

		let(:user) { create(:user) }
		let!(:expense) { create(:expense, creator: user) }

		before do
			login_as(user)
			visit '/expenses'
		end
		
		it "the expense is removed from the page and they see a confirmation message" do
			expect(page).to have_content(expense.description)
			page.click_link('delete')
			expect(page).to have_content("#{expense.title} has been deleted.")
			expect(page).not_to have_content(expense.description)
		end
	end

end