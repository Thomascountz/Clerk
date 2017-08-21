require 'rails_helper'
RSpec.feature 'New user creates an account', type: :feature do

	let(:new_user) { build(:user) }
	before { visit '/' }

	describe 'A new user creating an account' do
		it 'shows a message that signup was successful' do
			page.click_link('Sign up')
			page.fill_in('Email', with: new_user.email)
			page.fill_in('Password', with: new_user.password, :match => :prefer_exact)
			page.fill_in('Password confirmation', with: new_user.password_confirmation, :match => :prefer_exact)
			page.click_button('Sign up')
			expect(page).to have_content('Welcome! You have signed up successfully.')
		end
	end

end