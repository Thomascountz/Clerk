# When I'm on the homepage
# I see a link to "sign up"

# When I click on the link
# I see a form to create an account
# With full name, email, password, and password confirmation

# When I fill in valid information
# And click the "signup" button
# I am logged in

require 'rails_helper'

RSpec.feature 'Devise', type: :feature do

	describe 'A new user' do
		scenario 'creates an account with valid information' do
			visit '/'
			page.click_link('create an account')
			page.fill_in('Full Name', with: new_user.full_name)
			page.fill_in('Email', with: new_user.email)
			page.fill_in('Password', with: new_user.password)
			page.fill_in('Password Confirmation', with: new_user.password)
			page.click_button('Submit')
			expect(page).to have_content('Welcome! You have signed up successfully.')
		end
	end

	describe 'An existing user' do
		scenario 'signs into their account with valid information' do
			visit '/'
			page.click_link('Sign in')
			page.fill_in('Email', with: user.email)
			page.fill_in('Password', with: user.password)
			page.click_button('Submit')
			expect(page).to have_content('Signed in successfully.')
		end
	end
end
