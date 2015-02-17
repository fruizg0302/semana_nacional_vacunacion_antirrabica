Rails.application.routes.draw do
  resources :thirteen_annexes

  resources :twelve_annexes

  resources :eleven_annexes

  resources :ten_annexes

  resources :nine_annexes

  get 'home/index'

  resources :eight_annexes

  devise_for :users
  root 'home#index'


end
