Rails.application.routes.draw do
  get 'home/index'

  resources :eight_annexes

  devise_for :users
  root 'home#index'


end
