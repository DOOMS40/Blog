Rails.application.routes.draw do

  get 'comments/show'

  get 'comments/new'

  get 'comments/create'

  get 'searches/search'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "users#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :user_images

    resources :searches
end
