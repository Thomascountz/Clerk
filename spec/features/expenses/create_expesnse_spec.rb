require 'rails_helper'
RSpec.feature 'user creating a new expense', type: :feature do

	let(:user) { create(:user) }
	let(:expense) { build(:expense, creator_id: nil) }

	describe 'without logging in' do
		it 'warns that the user must sign in' do
			visit '/expenses/new'
			expect(current_path).to eq('/users/sign_in')
			expect(page).to have_content('You need to sign in or sign up before continuing.')
		end
	end

	describe 'with valid information' do
		it 'shows a message that expense creation was successful' do
			login_as(user) 
			visit 'expenses/new'
			page.fill_in('Title', with: expense.title)
			page.fill_in('Description', with: expense.description)
			page.fill_in('Amount', with: expense.amount)
			page.click_button('Submit')
			expect(page).to have_content('Your expense has been added.')
		end
	end

	describe 'with invalid information' do
		it 'shows a message that expense creation was not successful' do
			login_as(user)
			visit 'expenses/new'
			page.click_button('Submit')
			expect(page).to have_content("Title can't be blank")
		end
	end
end