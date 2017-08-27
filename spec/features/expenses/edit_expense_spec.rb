require 'rails_helper'
RSpec.feature 'user editing their expense', type: :feature do

	let(:user) { create(:user) }
	let(:expense) { create(:expense, creator: user) }

	describe 'without logging in' do
		it 'warns that the user must sign in' do
			visit edit_expense_path(expense)
			expect(current_path).to eq('/users/sign_in')
			expect(page).to have_content('You need to sign in or sign up before continuing.')
		end
	end

	describe 'with valid information' do
		it 'shows a message that expense was updated successfully' do
			login_as(user) 
			visit edit_expense_path(expense)
			page.fill_in('Description', with: FFaker::Lorem.sentence)
			page.click_button('Submit')
			expect(page).to have_content('Your expense has been updated.')
		end
	end

	describe 'with invalid information' do
		it 'shows a message that expense creation was not successful' do
			login_as(user)
			visit 'expenses/new'
			page.fill_in('Title', with: "")
			page.click_button('Submit')
			expect(page).to have_content("Title can't be blank")
		end
	end
end