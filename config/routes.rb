Rails.application.routes.draw do
  get 'registrations/new'

  get 'registrations/create'

  resources :thirteen_annexes

  resources :twelve_annexes

  resources :eleven_annexes

  resources :ten_annexes

  resources :nine_annexes

  get 'home/index'

  resources :eight_annexes

  devise_for :users, :controllers => { :registrations => "registrations" }
  root 'home#index'


end
