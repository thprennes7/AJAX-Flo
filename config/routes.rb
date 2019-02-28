Rails.application.routes.draw do
  resources :mails
  devise_for :users
  root to: "mails#index"
  resources :tasks, except: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
