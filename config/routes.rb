Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users
  resources :lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :lists do
    resources :tasks
  end
end



