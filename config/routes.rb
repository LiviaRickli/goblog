Rails.application.routes.draw do

  resources :blogs

  root 'welcome_page#index'
end
