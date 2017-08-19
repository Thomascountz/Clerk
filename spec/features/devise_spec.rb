require 'rails_helper'
RSpec.feature 'Devise', type: :feature do

	let(:new_user) { build(:user) }
	let(:user) { create(:user) }

	context 'A new user' do
		scenario 'creates an account with valid information' do
			visit '/'
			page.click_link('Create an Account')
			page.fill_in('Full name', with: new_user.full_name)
			page.fill_in('Email', with: new_user.email)
			page.fill_in('Password', with: new_user.password, :match => :prefer_exact)
			page.fill_in('Password confirmation', with: new_user.password_confirmation, :match => :prefer_exact)
			page.click_button('Sign up')
			expect(page).to have_content('Welcome! You have signed up successfully.')
		end
	end

	context 'An existing user' do
		scenario 'signs into their account with valid information' do
			visit '/'
			page.click_link('Sign in')
			page.fill_in('Email', with: user.email)
			page.fill_in('Password', with: user.password)
			page.click_button('Log in')
			expect(page).to have_content('Signed in successfully.')
		end
	end
end
