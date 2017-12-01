Rails.application.routes.draw do

  get 'doses/new'

  root 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:create]
  end
  resources :doses, only: [:destroy]
end
