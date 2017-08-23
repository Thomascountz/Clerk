Rails.application.routes.draw do
  devise_for :users
  resources :expenses, only: [:new, :create]
	root 'static_pages#index'
end
