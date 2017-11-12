require 'rails_helper'

RSpec.feature 'user viewing a list of their expenses', type: :feature do
	
	let(:user) { create(:user) }

	describe 'without logging in' do
		it 'warns that the user must sign in' do
			visit '/expenses'
			expect(current_path).to eq('/users/sign_in')
			expect(page).to have_content('You need to sign in or sign up before continuing.')
		end
	end

	describe 'when they have not created any expenses' do
		it 'shows a message and link to create a new expense' do
			login_as(user)
			visit '/expenses'
			expect(page).to have_content("Your Expenses")
			expect(page).to have_content('No Expenses Found.')
			expect(page).to have_link(nil, href:'/expenses/new')
		end
	end

	describe 'when they have already recorded expenses' do
		let!(:expense1) { create(:expense, creator: user) }
		let!(:expense2) { create(:expense, creator: user) }

		it "shows each of their expenses' details" do
			login_as(user)
			visit '/expenses'
			expect(page).to have_content("Your Expenses")
			expect(page).to have_content(expense1.title)
			expect(page).to have_content(expense1.description)
			expect(page).to have_content(expense2.title)
			expect(page).to have_content(expense2.description)
		end
	end

end