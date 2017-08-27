Rails.application.routes.draw do
	
	authenticated :user do
		root 'expenses#index'
	end
	root 'static_pages#index'

  devise_for :users
  resources :expenses, only: [:index, :new, :create, :show, :edit, :update]
end
