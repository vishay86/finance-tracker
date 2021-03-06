Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: 'user/registrations'}
  resources :user_stocks, except: [:show, :edit, :update]
  resources :users, only: [:show]
  resources :friendships

  root 'pages#home'

  get 'about' => 'pages#about'

  get 'my_portfolio' => 'users#my_portfolio'

  get 'search_stocks' => 'stocks#search'

  get 'my_friends' => 'users#my_friends'

  get 'search_friends' => 'users#search'

  post 'add_friend' => 'users#add_friend'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
