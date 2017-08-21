require 'rails_helper'
RSpec.feature 'User log in', type: :feature do

	let(:user) { create(:user) }
	before { visit '/' }

	describe 'An existing user logging into their account' do
		it 'shows a message that login was successful' do
			page.click_link('Log in')
			page.fill_in('Email', with: user.email)
			page.fill_in('Password', with: user.password, :match => :prefer_exact)
			page.click_button('Log in')
			expect(page).to have_content('Signed in successfully.')
		end
	end

end