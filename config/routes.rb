Rails.application.routes.draw do
  namespace :account_block do
    resources :accounts
    # get 'accounts/index'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
