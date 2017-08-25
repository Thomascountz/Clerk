require 'rails_helper'

RSpec.feature "user viewing an expense's details", type: :feature do
	let(:user) { create(:user) }
	let(:expense) { create(:expense, creator: user) }

	describe 'without logging in' do
		it 'warns that the user must sign in' do
			visit expense_path(expense)
			expect(current_path).to eq('/users/sign_in')
			expect(page).to have_content('You need to sign in or sign up before continuing.')
		end
	end

	describe 'when viewing an expense that they created' do
		it "shows their expense's details" do
			login_as(user)
			visit expense_path(expense)
			expect(page).to have_content(expense.title)
			expect(page).to have_content(expense.description)
		end
	end
end
