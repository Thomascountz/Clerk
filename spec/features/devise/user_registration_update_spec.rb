require 'rails_helper'
RSpec.feature 'An existing user updates their account information', type: :feature do

	let(:user) { create(:user) }
	let(:new_email) { FFaker::Internet.safe_email }

	describe 'An existing user updating their account' do

		before do
		 login_as(user)
		 visit '/' 
		end

		it 'shows a message that the update was successful' do
			page.click_link('Edit account')
			page.fill_in('Email', with: new_email)
			page.fill_in('Current password', with: user.password, :match => :prefer_exact)
			page.click_button('Update')
			expect(page).to have_content('Your account has been updated successfully.')
		end
	end

end