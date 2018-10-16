Rails.application.routes.draw do
  get 'welcome/index'

  root :to => "welcome#index"

  resources :authenticates
  resources :entries
  resources :registers
  resources :users
  resources :vehicles
  resources :evidences
  resources :sends
  resources :reports
  resources :notifications
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
