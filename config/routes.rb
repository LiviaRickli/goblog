Rails.application.routes.draw do

  devise_for :users
  resources :blogs

  root 'welcome_page#index'
end
