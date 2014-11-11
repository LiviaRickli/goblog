Rails.application.routes.draw do

  resources :articles

  root 'welcome_page#index'
end
