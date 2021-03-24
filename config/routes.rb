Rails.application.routes.draw do
  resources :accounts, except: [:show]
end
