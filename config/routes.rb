Rails.application.routes.draw do

  root 'static_pages#index'
  devise_for :users
  get 'static_pages/index'
  get 'static_pages/secret'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
