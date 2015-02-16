Rails.application.routes.draw do
  resources :nine_annexes

  get 'home/index'

  resources :eight_annexes

  devise_for :users
  root 'home#index'


end
